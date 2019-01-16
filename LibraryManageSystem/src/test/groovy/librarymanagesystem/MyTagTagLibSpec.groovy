package librarymanagesystem

import grails.testing.web.taglib.TagLibUnitTest
import spock.lang.Specification

class MyTagTagLibSpec extends Specification implements TagLibUnitTest<MyTagTagLib> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
