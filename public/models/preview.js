const { type } = require("express/lib/response");
const res = require("express/lib/response");
const db = require('../js/db');

class Preview {
    title;
    chapter;
    book_id;
    review;
    constructor(book_id) {
        this.book_id = book_id;
    }
    async getPreviewDetails() {
        if (typeof this.title !== 'string') {
            var sql = "Select * from preview where `book_id` = ?"
            const result = await db.query(sql, [this.book_id]);
            this.title = result[0].title;
            this.review = result[0].review;
        }
    }
    async getPreviewChapter() {
        if (typeof this.chapter !== 'Preview') {
            var sql = "select `chapter` from preview where `book_id`=?";
            const result = await db.query(sql, [this.book_id]);
            this.chapter = result[0].chapter;
        }
    } 
    async getReview(review) {
        var sql = "UPDATE preview SET review = ? WHERE preview.book_id = ?"
        const result = await db.query(sql, [review, this.book_id]);
        this.review = review;
        return result;
    }
}
module.exports = {
    Preview
}