import React from 'react';
import HelloWorld from '../HelloWorld';
import Enzyme from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
import {mount} from 'enzyme'


Enzyme.configure({ adapter: new Adapter() });

let wrapper, contact;

describe('<ContactCard />', ()=>{
    beforeEach(() => {
        wrapper = mount(<HelloWorld greeting={'Thomas'}/>);
    });

    it('displays contact name', () => {
        expect(wrapper.text()).toContain('Thomas');
    });

});

