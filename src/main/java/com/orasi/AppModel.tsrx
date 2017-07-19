<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<applicationModel>
    <name>Application Model</name>
    <className>AppModel</className>
    <objects>
        <object type="Page" technology="Web">
            <name>HOME - Orasi Software, Inc.</name>
            <codeName>OrasiHome</codeName>
            <identification/>
            <children>
                <object type="WebElement" technology="Web">
                    <name>CONTACT US</name>
                    <codeName>CONTACTUSWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="ClassName" type="string" isRegExp="false">menu-text fusion-button button-default button-large</property>
                            <property name="TagName" type="string" isRegExp="false">SPAN</property>
                            <property name="InnerText" type="string" isRegExp="false">CONTACT US</property>
                        </properties>
                    </identification>
                </object>
            </children>
        </object>
        <object type="Page" technology="Web">
            <name>Contact Us - Orasi Software, Inc.</name>
            <codeName>ContactUs</codeName>
            <identification/>
            <children>
                <object type="Frame" technology="Web">
                    <name>Frame</name>
                    <codeName>Frame</codeName>
                    <identification>
                        <properties>
                            <property name="Name" type="string" isRegExp="false"></property>
                            <property name="Url" type="string" isRegExp="false">http://www2.orasi.com/l/42712/2015-10-07/3p6frr</property>
                        </properties>
                    </identification>
                    <children>
                        <object type="EditField" technology="Web">
                            <name>Message</name>
                            <codeName>MessageEditField</codeName>
                            <identification>
                                <properties>
                                    <property name="Type" type="string" isRegExp="false">textarea</property>
                                    <property name="TagName" type="string" isRegExp="false">TEXTAREA</property>
                                    <property name="Name" type="string" isRegExp="false">42712_172280pi_42712_172280</property>
                                </properties>
                            </identification>
                        </object>
                        <object type="ListBox" technology="Web">
                            <name>Country</name>
                            <codeName>CountryListBox</codeName>
                            <identification>
                                <properties>
                                    <property name="TagName" type="string" isRegExp="false">SELECT</property>
                                    <property name="Name" type="string" isRegExp="false">42712_172278pi_42712_172278</property>
                                </properties>
                            </identification>
                        </object>
                        <object type="EditField" technology="Web">
                            <name>Company</name>
                            <codeName>CompanyEditField</codeName>
                            <identification>
                                <properties>
                                    <property name="Type" type="string" isRegExp="false">text</property>
                                    <property name="TagName" type="string" isRegExp="false">INPUT</property>
                                    <property name="Name" type="string" isRegExp="false">42712_172274pi_42712_172274</property>
                                </properties>
                            </identification>
                        </object>
                        <object type="EditField" technology="Web">
                            <name>FirstName</name>
                            <codeName>FirstNameEditField</codeName>
                            <identification>
                                <properties>
                                    <property name="Type" type="string" isRegExp="false">text</property>
                                    <property name="TagName" type="string" isRegExp="false">INPUT</property>
                                    <property name="Name" type="string" isRegExp="false">42712_172270pi_42712_172270</property>
                                </properties>
                            </identification>
                        </object>
                        <object type="EditField" technology="Web">
                            <name>Email</name>
                            <codeName>EmailEditField</codeName>
                            <identification>
                                <properties>
                                    <property name="Type" type="string" isRegExp="false">text</property>
                                    <property name="TagName" type="string" isRegExp="false">INPUT</property>
                                    <property name="Name" type="string" isRegExp="false">42712_172268pi_42712_172268</property>
                                </properties>
                            </identification>
                        </object>
                        <object type="ListBox" technology="Web">
                            <name>Department</name>
                            <codeName>DepartmentListBox</codeName>
                            <identification>
                                <properties>
                                    <property name="TagName" type="string" isRegExp="false">SELECT</property>
                                    <property name="Name" type="string" isRegExp="false">42712_172266pi_42712_172266</property>
                                </properties>
                            </identification>
                        </object>
                        <object type="EditField" technology="Web">
                            <name>LastName</name>
                            <codeName>LastNameEditField</codeName>
                            <identification>
                                <properties>
                                    <property name="Type" type="string" isRegExp="false">text</property>
                                    <property name="TagName" type="string" isRegExp="false">INPUT</property>
                                    <property name="Name" type="string" isRegExp="false">42712_172272pi_42712_172272</property>
                                </properties>
                            </identification>
                        </object>
                        <object type="ListBox" technology="Web">
                            <name>State</name>
                            <codeName>StateListBox</codeName>
                            <identification>
                                <properties>
                                    <property name="TagName" type="string" isRegExp="false">SELECT</property>
                                    <property name="Name" type="string" isRegExp="false">42712_185989pi_42712_185989</property>
                                </properties>
                            </identification>
                        </object>
                    </children>
                </object>
                <object type="Frame" technology="Web">
                    <name>undefined</name>
                    <codeName>UndefinedFrame</codeName>
                    <identification>
                        <properties>
                            <property name="Name" type="string" isRegExp="false">undefined</property>
                        </properties>
                    </identification>
                    <children>
                        <object type="WebElement" technology="Web">
                            <name>Robot</name>
                            <codeName>RobotWebElement</codeName>
                            <identification>
                                <properties>
                                    <property name="ClassName" type="string" isRegExp="false">recaptcha-checkbox-checkmark</property>
                                    <property name="TagName" type="string" isRegExp="false">DIV</property>
                                    <property name="InnerText" type="string" isRegExp="false"></property>
                                </properties>
                            </identification>
                        </object>
                    </children>
                </object>
            </children>
        </object>
    </objects>
</applicationModel>
