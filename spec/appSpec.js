// spec/appSpec.js
const { add } = require('../app');

describe('Addition function', () => {
    it('should return 4 for 2 + 2', () => {
        expect(add(2, 2)).toBe(4);
    });
});

