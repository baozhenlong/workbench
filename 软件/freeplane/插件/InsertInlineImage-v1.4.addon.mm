<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Insert Inline Image" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1750948378322" LINK="https://sourceforge.net/projects/freeplane/files/addons/insertInlineImage" BACKGROUND_COLOR="#97c7dc">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" show_tags="UNDER_NODES" show_note_icons="true" fit_to_viewport="false" show_icons="BESIDE_NODES" showTagCategories="false"/>
    <tags category_separator="::"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_1460482754" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1460482754" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="12" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.tags">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.ok">
<icon BUILTIN="button_ok"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.needs_action">
<icon BUILTIN="messagebox_warning"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.floating_node">
<cloud COLOR="#ffffff" SHAPE="ARC"/>
<edge STYLE="hide_edge"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.connection" COLOR="#606060" STYLE="fork">
<font NAME="Arial" SIZE="10" BOLD="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" COLOR="#ff0000">
<font NAME="Liberation Sans" SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.question">
<icon BUILTIN="help"/>
<font NAME="Aharoni" SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.key" COLOR="#996600">
<icon BUILTIN="password"/>
<font NAME="Liberation Sans" SIZE="12" BOLD="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.idea">
<icon BUILTIN="idea"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.note" COLOR="#990000">
<font NAME="Liberation Sans" SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.date" COLOR="#0033ff">
<icon BUILTIN="calendar"/>
<font NAME="Liberation Sans" SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.website" COLOR="#006633">
<font NAME="Liberation Sans" SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.list" COLOR="#cc6600">
<icon BUILTIN="list"/>
<font NAME="Liberation Sans" SIZE="12" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.quotation" COLOR="#338800" STYLE="fork">
<font NAME="Liberation Sans" SIZE="12" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.definition" COLOR="#666600">
<font NAME="Liberation Sans" SIZE="12" BOLD="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.description" COLOR="#996600">
<font NAME="Liberation Sans" SIZE="12" BOLD="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.pending" COLOR="#b3b95c">
<font NAME="Liberation Sans" SIZE="12"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="20"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="12"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode TEXT="red" COLOR="#ff0300"/>
<stylenode TEXT="green" COLOR="#00cd00"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<attribute_layout NAME_WIDTH="58.70064 pt" VALUE_WIDTH="58.70064 pt"/>
<attribute NAME="name" VALUE="insertInlineImage"/>
<attribute NAME="version" VALUE="v1.4"/>
<attribute NAME="author" VALUE="Henk van den Akker, Volker Börchers, Rickenbroc"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.8.6"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="updateUrl" VALUE=""/>
<attribute NAME="downloadUrl" VALUE=""/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        name: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        author: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        version: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        freeplane-version-from: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        freeplane-version-to: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
      <li>
        updateUrl: URL of the file containing information (version, download url) on the latest version of this add-on. By default: &quot;${homepage}/version.properties&quot;
      </li>
      <li>
        downloadUrl: add-on file download URL added to version.properties, by default ${homepage}/$name-$version.addon.mm&quot;
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="description" POSITION="top_or_left" ID="ID_328053546" CREATED="1313183947316" MODIFIED="1750948378332"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&#xa0;node.
    </p>
    <p>
      To translate the description you have to define a translation for the key 'addons.${name}.description'.
    </p>
  </body>
</html></richcontent>
<node TEXT="This add-on is a convenient mean to add images on the fly in your maps. The images can come from :&#xa;- a file from your computer,&#xa;- the clipboard : image file path or a copy (like a screenshot),&#xa;- an url from the internet.&#xa;&#xa;You can resize the display (with a preview pane) and put it in :&#xa;- node core&#xa;- node details&#xa;- note&#xa;- node extension&#xa;&#xa;You can even decorate the image inserted with a link which point wherever you would want." ID="ID_1187826020" CREATED="1313183969546" MODIFIED="1403110633984" BACKGROUND_COLOR="#ffff75" HGAP_QUANTITY="-430 px" VSHIFT_QUANTITY="-94 px">
<font SIZE="16"/>
</node>
</node>
<node TEXT="changes" POSITION="top_or_left" ID="ID_309963735" CREATED="1321572498798" MODIFIED="1403110421625"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html></richcontent>
<node TEXT="v0.9" FOLDED="true" ID="ID_679770157" CREATED="1321674749784" MODIFIED="1321674755767">
<node TEXT="initial version" ID="ID_1804184819" CREATED="1321674758481" MODIFIED="1321674762219"/>
</node>
<node TEXT="v0.9.4" FOLDED="true" ID="ID_1191427697" CREATED="1321572503553" MODIFIED="1321572536574">
<node TEXT="adjusted to new add-on format" ID="ID_1401343116" CREATED="1321572540042" MODIFIED="1321572575564"/>
<node TEXT="fixed display problems with img tag in the description" ID="ID_123909775" CREATED="1321674769271" MODIFIED="1321674802952"/>
</node>
<node TEXT="v0.9.5" FOLDED="true" ID="ID_723938532" CREATED="1322589652141" MODIFIED="1322589658967">
<node TEXT="by rickenbroc&#xa;- determine original image size for file URLs.&#xa;- optionally insert hrefs to image source or custom URLs&#xa;- added icon and screenshot" ID="ID_1747834540" CREATED="1322589660144" MODIFIED="1324422066251"/>
</node>
<node TEXT="v0.9.6" FOLDED="true" ID="ID_518319016" CREATED="1322963289075" MODIFIED="1322963293982">
<node TEXT="Included rickenbroc&apos;s fix for non-local urls&#xa;Accept file names without protocol" ID="ID_1389922760" CREATED="1322963325127" MODIFIED="1322963340557"/>
</node>
<node TEXT="V0.9.7" ID="ID_1610708500" CREATED="1324421952381" MODIFIED="1324421965073">
<node TEXT="by Rickenbroc&#xa;- addition of a paste button&#xa;- correction of a bug on Mac where pasted images where invisible" ID="ID_315118662" CREATED="1324421965612" MODIFIED="1324422141077"/>
</node>
<node TEXT="v0.9.8" ID="ID_937553912" CREATED="1328432576259" MODIFIED="1328432587095">
<node TEXT="img src attribute can have now a relative path" ID="ID_702178344" CREATED="1328432588090" MODIFIED="1328432726352"/>
</node>
<node TEXT="v0.9.9" ID="ID_909338140" CREATED="1371747218468" MODIFIED="1371747234609">
<node TEXT="by Rickenbroc&#xa;- the image can be inserted in node extension&#xa;- preview pane for helping the resizing of the image&#xa;- mecanism for modifying the images&#xa;- node text as default filename for image coming from the clipboard" ID="ID_612130570" CREATED="1371747234625" MODIFIED="1371747526593"/>
</node>
<node TEXT="v1.0" ID="ID_763858700" CREATED="1403107287421" MODIFIED="1403107294359">
<node TEXT="by Rickenbroc&#xa;- correction of a bug with relative paths&#xa;- new : if the path of an image is copied in the clipboard, the image is previewed at the add-on launch&#xa;New icon from Alexander Moore (http://www.famfamfam.com)" ID="ID_1231279373" CREATED="1403107294375" MODIFIED="1403112339656"/>
</node>
<node TEXT="v1.1" ID="ID_763858398" CREATED="1598703774880" MODIFIED="1598703774880">
<node TEXT="by Dimitry&#xa;- fix for Freeplane 1.8.x" ID="ID_729493465" CREATED="1403107294375" MODIFIED="1403112339656"/>
</node>
<node TEXT="v1.2" ID="ID_1973009499" CREATED="1598703774880" MODIFIED="1598703935161">
<node TEXT="by Dimitry&#xa;- fix for Freeplane 1.8.x" ID="ID_1580989474" CREATED="1403107294375" MODIFIED="1403112339656"/>
</node>
<node TEXT="v1.3" ID="ID_396208557" CREATED="1617990695311" MODIFIED="1617990695311">
<node TEXT="by Dimitry&#xa;- fix for Freeplane 1.9.x" ID="ID_1121909919" CREATED="1617990695311" MODIFIED="1617990695311"/>
</node>
<node TEXT="v1.4" ID="ID_402875175" CREATED="1750947923236" MODIFIED="1750947934730">
<node TEXT="by HaaiHenkie&#xa;- fixed image from clipboard macOS" ID="ID_217596073" CREATED="1750947962407" MODIFIED="1750948026441"/>
</node>
</node>
<node TEXT="scripts" POSITION="bottom_or_right" ID="ID_788417856" CREATED="1316303875303" MODIFIED="1750948378355" HGAP_QUANTITY="60 px" VSHIFT_QUANTITY="40 px"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. insertInlineImage.groovy). The name must have a suffix of a supported script language like .groovy or .js and may only consist of letters and digits. The script properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- Defines the menu location, defaults a sub menu 'main_menu_scripting/addons.${name}'.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;-&#xa0;Use developer tool menuItemInfo to inspect menu location keys.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&#xa0;variable is set to the selected node.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&#xa0;that the script(s) require, each either false or true:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_asking
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &#xa0;&#xa0;Notes:
    </p>
    <p>
      &#xa0;&#xa0;- The set of permissions is fixed.
    </p>
    <p>
      &#xa0;&#xa0;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &#xa0;&#xa0;- Set the values either to true or to false
    </p>
    <p>
      &#xa0;&#xa0;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html></richcontent>
<node TEXT="insertInlineImage.groovy" FOLDED="true" ID="ID_1651569668" CREATED="1313132482683" MODIFIED="1750948358446"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      This script may open a file chooser. Due to some suboptimal file chooser implementations this might lead to a &quot;test write access&quot;. To avoid problems in this case <b>file write access</b>&#160;is granted but not actually needed.
    </p>
    <p>
      
    </p>
    <p>
      This script can be used to insert URLs like http://somehost.com/path/test.png. This will lead to a download of the image so <b>network access</b>&#160;could be necessary as well (but it doesn't seem so currently).
    </p>
  </body>
</html></richcontent>
<attribute_layout NAME_WIDTH="122.90446 pt" VALUE_WIDTH="122.90446 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}"/>
<attribute NAME="menuLocation" VALUE="/main_menu/insert/menu_image"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="control shift I"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="true"/>
<node TEXT="// @ExecutionModes({ON_SINGLE_NODE})&#xa;// Copyright (C) 2011 Volker Boerchers, Rickenbroc&#xa;//&#xa;// This program is free software: you can redistribute it and/or modify&#xa;// it under the terms of the GNU General Public License as published by&#xa;// the Free Software Foundation, either version 2 of the License, or&#xa;// (at your option) any later version.&#xa;&#xa;import groovy.swing.SwingBuilder&#xa;import groovy.beans.Bindable&#xa;import java.awt.FlowLayout as FL&#xa;&#xa;import javax.swing.BoxLayout as BXL&#xa;import javax.swing.Icon&#xa;import javax.swing.ImageIcon&#xa;import javax.swing.JFileChooser&#xa;import javax.swing.SwingUtilities&#xa;import javax.swing.JDialog&#xa;import javax.swing.JLabel&#xa;import java.beans.PropertyChangeEvent;&#xa;import java.beans.PropertyChangeListener;&#xa;import javax.swing.event.*&#xa;import javax.swing.JRootPane&#xa;import javax.swing.JFrame&#xa;&#xa;import org.freeplane.core.resources.ResourceController&#xa;import org.freeplane.features.link.LinkController;&#xa;import org.freeplane.features.mode.Controller&#xa;&#xa;import java.awt.*;&#xa;&#xa;import java.awt.datatransfer.Clipboard;&#xa;import java.awt.datatransfer.DataFlavor;&#xa;import java.awt.event.KeyEvent&#xa;import javax.imageio.*;&#xa;import java.awt.image.*;&#xa;import javax.swing.filechooser.FileNameExtensionFilter&#xa;import java.util.Date&#xa;import java.util.logging.Logger;&#xa;&#xa;&#xa;class MyImage {&#xa;    def url&#xa;    def curImg&#xa;    def type&#xa;    @Bindable&#xa;    def width&#xa;    @Bindable&#xa;    def height&#xa;    def location&#xa;&#xa;    def MyImage() {&#xa;        url = &quot;&quot;&#xa;    }&#xa;&#xa;    def MyImage(theUrl) {&#xa;        url = theUrl&#xa;        imgFromUrl()&#xa;    }&#xa;&#xa;    def MyImage(Image img) {&#xa;        welcomeImg(img)&#xa;    }&#xa;&#xa;    def imgFromUrl(theUrl) {&#xa;        url = theUrl&#xa;        try {&#xa;            curImg = Toolkit.getDefaultToolkit().getImage(theUrl)&#xa;            imgDimensions()&#xa;        } catch (Exception e) {&#xa;            logger.warn(&quot;invalid image file : &quot; + theUrl, e)&#xa;        }&#xa;    }&#xa;&#xa;    def welcomeImg(img) {&#xa;        curImg = img&#xa;        url = img.toString()&#xa;        imgDimensions()&#xa;    }&#xa;&#xa;    def imgDimensions() {&#xa;        width = curImg.getWidth()&#xa;        height = curImg.getHeight()&#xa;    }&#xa;&#xa;}&#xa;&#xa;MyImage currentImage = new MyImage()&#xa;&#xa;def locationMap = [1: &apos;text&apos;, 2: &apos;details&apos;, 3: &apos;note&apos;, 4: &apos;imagePlaceHolder&apos;]&#xa;&#xa;def Icon getIcon(String path) {&#xa;    ResourceController.getResourceController().getIcon(path)&#xa;}&#xa;&#xa;&#xa;JFileChooser createFileChooser() {&#xa;    return ui.newFileChooser();&#xa;}&#xa;&#xa;iWidth = 1.0&#xa;iHeight = 1.0&#xa;iProportion = 1.0&#xa;&#xa;//check if a previous image is already existing&#xa;def fSrc = &apos;&apos;; //the path of the existing image&#xa;&#xa;//looking if the node text contains some images&#xa;//List of files in the node that will be populate in a combo box&#xa;urlList = []&#xa;&#xa;//matcher is an array of the matches,&#xa;//each match is an array of match, group 1, ..., group n&#xa;matcher = node.text =~ /src\s*=\s*&apos;([^&apos;]+)&apos;/&#xa;&#xa;//adding the found files in the list for the combo&#xa;// (c) for core&#xa;// decode html escape char (%20 to space)&#xa;matcher.each { urlList.push(it[1].replaceAll(&quot;%20&quot;, &quot; &quot;) + &quot; (c)&quot;) }&#xa;&#xa;//I have to do it in 2 pass because if a path is containing a single quote, the regex may truncate the URL&#xa;matcher = node.text =~ /src\s*=\s*&quot;([^&quot;]+)&quot;/&#xa;matcher.each { urlList.push(it[1].replaceAll(&quot;%20&quot;, &quot; &quot;) + &quot; (c)&quot;) }&#xa;&#xa;// (d) for details&#xa;matcher = node.detailsText =~ /src\s*=\s*&apos;([^&apos;]+)&apos;/&#xa;matcher.each { urlList.push(it[1].replaceAll(&quot;%20&quot;, &quot; &quot;) + &quot; (d)&quot;) }&#xa;&#xa;matcher = node.detailsText =~ /src\s*=\s*&quot;([^&quot;]+)&quot;/&#xa;matcher.each { urlList.push(it[1].replaceAll(&quot;%20&quot;, &quot; &quot;) + &quot; (d)&quot;) }&#xa;&#xa;// (n) for note&#xa;matcher = node.note =~ /src\s*=\s*&apos;([^&apos;]+)&apos;/&#xa;matcher.each { urlList.push(it[1].replaceAll(&quot;%20&quot;, &quot; &quot;) + &quot; (n)&quot;) }&#xa;&#xa;matcher = node.note =~ /src\s*=\s*&quot;([^&quot;]+)&quot;/&#xa;matcher.each { urlList.push(it[1].replaceAll(&quot;%20&quot;, &quot; &quot;) + &quot; (n)&quot;) }&#xa;&#xa;//the first file will be used by the file text field&#xa;if (urlList.size() &gt; 0) fSrc = findURI(urlList[0])&#xa;&#xa;def builder = new SwingBuilder()&#xa;def btCancel = builder.button(&apos;Cancel&apos;)&#xa;&#xa;/*&#xa;* New type of dialog for the preview pane&#xa;*/&#xa;&#xa;class PPane extends JDialog {&#xa;    private MyImage currentImage;&#xa;&#xa;    public PPane(MyImage mi, Frame o) {&#xa;        super(o);&#xa;        currentImage = mi;&#xa;        this.locationRelativeTo = o&#xa;        this.undecorated = true&#xa;        this.location = [10, 10]&#xa;        this.alwaysOnTop = false&#xa;        this.resizable = true&#xa;        this.visible = false&#xa;    }&#xa;&#xa;    public void paint(Graphics g) {&#xa;        super.paint(g); //redraw for lightweight component&#xa;        g.drawImage(currentImage.curImg, 0, 0, currentImage.width, currentImage.height, null);&#xa;    }&#xa;}&#xa;&#xa;//new instance of the previewPane&#xa;PPane previewPane = new PPane(currentImage, ui.frame)&#xa;previewPane.getRootPane().setDoubleBuffered(true)&#xa;&#xa;//escapable&#xa;ui.addEscapeActionToDialog(previewPane)&#xa;&#xa;class LabelAccessory extends JLabel implements PropertyChangeListener {&#xa;    private static final int PREFERRED_WIDTH = 125;&#xa;    private static final int PREFERRED_HEIGHT = 100;&#xa;&#xa;    public LabelAccessory(JFileChooser chooser) {&#xa;        setVerticalAlignment(JLabel.CENTER);&#xa;        setHorizontalAlignment(JLabel.CENTER);&#xa;        chooser.addPropertyChangeListener(this);&#xa;        setPreferredSize(new Dimension(PREFERRED_WIDTH, PREFERRED_HEIGHT));&#xa;    }&#xa;&#xa;    public void propertyChange(PropertyChangeEvent changeEvent) {&#xa;        String changeName = changeEvent.getPropertyName();&#xa;        if (changeName.equals(JFileChooser.SELECTED_FILE_CHANGED_PROPERTY)) {&#xa;            File file = (File) changeEvent.getNewValue();&#xa;            if (file != null) {&#xa;                ImageIcon icon = new ImageIcon(file.getPath());&#xa;                if (icon.getIconWidth() &gt; PREFERRED_WIDTH) {&#xa;                    icon = new ImageIcon(icon.getImage().getScaledInstance(&#xa;                            PREFERRED_WIDTH, -1, Image.SCALE_DEFAULT));&#xa;                    if (icon.getIconHeight() &gt; PREFERRED_HEIGHT) {&#xa;                        icon = new ImageIcon(icon.getImage().getScaledInstance(&#xa;                                -1, PREFERRED_HEIGHT, Image.SCALE_DEFAULT));&#xa;                    }&#xa;                }&#xa;                setIcon(icon);&#xa;            }&#xa;        }&#xa;    }&#xa;}&#xa;&#xa;/*&#xa;* Main Dialog box&#xa;*/&#xa;def dialogue = builder.dialog(title: &apos;Insert/Mofify Image&apos;, id: &apos;insertImage&apos;, modal: true,&#xa;        locationRelativeTo: ui.frame, owner: ui.frame, pack: true) {&#xa;/*&#xa;* GUI&#xa;*/&#xa;    panel() {&#xa;&#xa;        def urlField&#xa;        boxLayout(axis: BXL.Y_AXIS)&#xa;/*&#xa;* combo box (appears if there are several images in the node)&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;            flowLayout(alignment: FL.LEFT)&#xa;            comboBox(id: &apos;cb&apos;, items: urlList, visible: (urlList.size() &gt; 1), actionPerformed: {&#xa;                currentImage.imgFromUrl(findAbsolutePath(cb.selectedItem))&#xa;//logger.info(&quot;url image : &quot;+findAbsolutePath(cb.selectedItem))&#xa;                getImageDimensions(currentImage.curImg)&#xa;                previewPane.preferredSize = getMaxDimensions()&#xa;                previewPane.visible = true&#xa;                previewPane.pack()&#xa;            })&#xa;        }&#xa;&#xa;/*&#xa;* url field&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;&#xa;            label(&apos;URL&apos;)&#xa;//bound to the combobox&#xa;            urlField = textField(id: &apos;url&apos;, columns: 30, text: bind { findURI(cb.selectedItem) })&#xa;&#xa;/*&#xa;* url chooser button&#xa;*/&#xa;            button(actionPerformed: {&#xa;                def chooser = createFileChooser()&#xa;//images only by default&#xa;                FileNameExtensionFilter imagesFilter = new FileNameExtensionFilter(&quot;Images files&quot;, &quot;gif&quot;, &quot;jpg&quot;, &quot;jpeg&quot;, &quot;png&quot;, &quot;svg&quot;);&#xa;                chooser.setFileFilter(imagesFilter)&#xa;                chooser.setAccessory(new LabelAccessory(chooser));&#xa;                if (chooser.showOpenDialog() == JFileChooser.APPROVE_OPTION) {&#xa;                    if (System.properties[&apos;os.name&apos;].toLowerCase().contains(&apos;windows&apos;)) {&#xa;                        urlField.text = chooser.selectedFile.toURI().toString()&#xa;                    } else {&#xa;                        urlField.text = chooser.selectedFile.toURI().toString()&#xa;                    }&#xa;                    try {&#xa;                        Image image = Toolkit.getDefaultToolkit().getImage(chooser.selectedFile.toString())&#xa;                        getImageDimensions(image) //filling the image dimensions fields&#xa;                        currentImage.welcomeImg(image)&#xa;                        previewPane.preferredSize = getMaxDimensions()&#xa;                        previewPane.pack()&#xa;                        previewPane.visible = true&#xa;&#xa;                    } catch (Exception e) {&#xa;                        logger.warn(&quot;invalid image file&quot;, e)&#xa;                    }&#xa;                }&#xa;            }, icon: getIcon(&quot;/images/fileopen.svg&quot;))&#xa;        }&#xa;&#xa;/*&#xa;* paste image from clipboard button&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;            BufferedImage image;&#xa;            flowLayout(alignment: FL.LEFT)&#xa;            button(text: &apos;paste image from clipboard&apos;,&#xa;                    actionPerformed: {&#xa;                        Toolkit tool = Toolkit.getDefaultToolkit()&#xa;                        Clipboard clipboard = tool.getSystemClipboard() //get ClipBoard&#xa;                        try {&#xa;                            if (clipboard.isDataFlavorAvailable(DataFlavor.imageFlavor)) { //contains an image&#xa;                                if (System.getProperty(&quot;os.name&quot;).toLowerCase().indexOf(&quot;mac&quot;) &gt;= 0) { //if mac&#xa;                                    /* In macOS we cannot cast clipboard.getData() to BufferedImage directly,&#xa;                                    so we need to cast to Image first */&#xa;                                    Image macImage = (Image) clipboard.getData(DataFlavor.imageFlavor) //get the image&#xa;                                    image = getBufferedImage(macImage); //convert into BufferedImage&#xa;                                } else {&#xa;                                    //In other OS we can cast to BufferedImage directly&#xa;                                    image = (BufferedImage) clipboard.getData(DataFlavor.imageFlavor) //get the image&#xa;                                }&#xa;                                getImageDimensions(image) //filling the image dimensions fields&#xa;                                currentImage.welcomeImg(image)&#xa;                                previewPane.preferredSize = getMaxDimensions()&#xa;                                previewPane.pack()&#xa;                                previewPane.visible = true&#xa;                                JFileChooser save = new JFileChooser(node.map.file);//by default the map directory&#xa;                                FileNameExtensionFilter filter = new FileNameExtensionFilter(&#xa;                                        &quot;PNG Images&quot;, &quot;png&quot;);&#xa;                                save.setFileFilter(filter);&#xa;                                save.setDialogTitle(&quot;Save clipboard image as&quot;)&#xa;                                Date date = new Date()&#xa;                                //ms from the creation for appending the image name and make it unique&#xa;                                def mapName = node.map.name //name of the map&#xa;                                def nodeText = node.text&#xa;                                nodeText = nodeText.replaceAll(/\W/, &quot;&quot;) //remove all non alphanumeric and _&#xa;                                if (nodeText.equals(&quot;&quot;)) {  // if the node text is empty&#xa;                                    nodeText = node.id   //take the node id instead&#xa;                                }&#xa;                                if (nodeText.length() &gt; 31) {  //cut the text if is greater than 32 chars&#xa;                                    nodeText = nodeText[0..31]&#xa;                                }&#xa;&#xa;                                def defaultFileStr = nodeText.replaceAll(&apos;.mm&apos;, &apos;&apos;) + &apos;_&apos; + date.getTime().toString() + &apos;.png&apos;&#xa;                                //default image name = nodeText_timeFlag.png&#xa;                                save.setSelectedFile(new File(defaultFileStr))&#xa;&#xa;                                int result = save.showSaveDialog(null); //show save Dialog&#xa;                                if (result == JFileChooser.APPROVE_OPTION) { //OK we have a name&#xa;                                    def fileStr = save.getSelectedFile().getAbsolutePath();&#xa;                                    //convert file path to string&#xa;                                    fileStr = fileStr.lastIndexOf(&apos;.png&apos;).with { it != -1 ? fileStr : fileStr + &apos;.png&apos; }&#xa;                                    //for checking if there is an extension .png&#xa;                                    File file = new File(fileStr) //instance of a new File with the appended file string&#xa;                                    file.createNewFile(); //file overwrite&#xa;                                    ImageIO.write(image, &quot;png&quot;, file);&#xa;                                    if (System.properties[&apos;os.name&apos;].toLowerCase().contains(&apos;windows&apos;)) {&#xa;                                        urlField.text = file.toURI().toString()&#xa;                                    } else {&#xa;                                        urlField.text = file.toURI().toString()&#xa;                                    }&#xa;&#xa;//urlField.text = file.toURI().toString() //filling the url text field with the URI of the image&#xa;                                    getImageDimensions(image) //filling the image dimensions fields&#xa;                                    currentImage.imgFromUrl(findAbsolutePath(fileStr))&#xa;                                    previewPane.preferredSize = getMaxDimensions()&#xa;                                    previewPane.pack()&#xa;                                    previewPane.visible = true&#xa;                                }&#xa;                            }&#xa;                        } catch (Exception e) {&#xa;                            logger.warn(&quot;Invalid image generation from clipboard&quot;, e)&#xa;                        }&#xa;                    })&#xa;        }&#xa;&#xa;/*&#xa;* radio buttons&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;            flowLayout(alignment: FL.LEFT)&#xa;            label(&apos;Link target :&apos;)&#xa;            buttonGroup().with { urlGroup -&gt;&#xa;                noLink = radioButton(id: &apos;noLinkRB&apos;, text: &apos;no link&apos;, buttonGroup: urlGroup)&#xa;                imagePath = radioButton(id: &apos;urlRB&apos;, text: &apos;image path&apos;, buttonGroup: urlGroup, selected: true)&#xa;                customUrl = radioButton(id: &apos;customUrlRB&apos;, text: &apos;your link&apos;, buttonGroup: urlGroup)&#xa;            }&#xa;            legend = checkBox(id: &apos;legendCB&apos;, label: &apos;as legend&apos;, selected: false)&#xa;        }&#xa;&#xa;/*&#xa;* custom link field&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;            def vars = builder.variables&#xa;            flowLayout(alignment: FL.RIGHT)&#xa;            customUrlField = textField(id: &apos;customUrl&apos;, columns: 25, enabled: bind(source: vars.customUrlRB, sourceProperty: &apos;selected&apos;, converter: { it ? true : false }))&#xa;        }&#xa;&#xa;/*&#xa;* proportional resizing label&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;            flowLayout(alignment: FL.LEFT)&#xa;            label(&apos;Proportional image resizing:&apos;)&#xa;        }&#xa;&#xa;/*&#xa;* proportional panel resizing&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;            flowLayout(alignment: FL.LEFT)&#xa;/*&#xa;* slider&#xa;*/&#xa;            scaleSlider = slider(id: &apos;scale&apos;, minimum: 1, maximum: 200, minorTickSpacing: 10, majorTickSpacing: 50, paintTicks: true, snapToTicks: false, value: 100)&#xa;&#xa;/*&#xa;* dimensions fields&#xa;*/&#xa;            label(&apos;Width:&apos;)&#xa;            widthField = textField(id: &apos;width&apos;, columns: 4, text: bind(source: scaleSlider, sourceProperty: &apos;value&apos;, converter: { (it / 100.0f * iWidth).toInteger() }))&#xa;            glue()&#xa;            label(&apos;Height:&apos;)&#xa;            heightField = textField(id: &apos;height&apos;, columns: 4, text: bind(source: scaleSlider, sourceProperty: &apos;value&apos;, converter: { (it / 100.0f * iHeight).toInteger() }))&#xa;        }&#xa;/*&#xa;* resize event&#xa;*/&#xa;        scaleSlider.stateChanged = {&#xa;            previewPane.preferredSize = getMaxDimensions()&#xa;            previewPane.pack()&#xa;        }&#xa;//the image fits the previewPane&#xa;        previewPane.componentResized = {&#xa;            currentImage.width = widthField.text.toInteger()&#xa;            currentImage.height = heightField.text.toInteger()&#xa;            previewPane.repaint()&#xa;        }&#xa;&#xa;&#xa;/*&#xa;* target choice&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;            flowLayout(alignment: FL.LEFT)&#xa;            label(&apos;Target:&apos;)&#xa;            buttonGroup().with { group -&gt;&#xa;                radioButton(id: &apos;core&apos;, text: &apos;Core&apos;, selected: true, buttonGroup: group)&#xa;                radioButton(id: &apos;details&apos;, text: &apos;Details&apos;, buttonGroup: group)&#xa;                radioButton(id: &apos;note&apos;, text: &apos;Note&apos;, buttonGroup: group)&#xa;                radioButton(id: &apos;extObj&apos;, text: &apos;Extension&apos;, buttonGroup: group)&#xa;            }&#xa;        }&#xa;&#xa;/*&#xa;* main form&#xa;*/&#xa;        panel(alignmentX: 0f) {&#xa;            flowLayout(alignment: FL.RIGHT)&#xa;/*&#xa;* OK button&#xa;*/&#xa;            button(action: action(name: &apos;OK&apos;, defaultButton: true, mnemonic: &apos;O&apos;,&#xa;                    enabled: bind(source: urlField, sourceProperty: &apos;text&apos;,&#xa;                            converter: { it ? true : false }),&#xa;                    closure: { variables.ok = true; dispose() }))&#xa;/*&#xa;* Cancel button&#xa;*/&#xa;            widget(btCancel)&#xa;//button(action:action(name:&apos;Cancel&apos;, mnemonic:&apos;C&apos;, closure:{dispose();}))&#xa;        }&#xa;&#xa;/*&#xa;* some things to do at initialization&#xa;*/&#xa;/* check if there is an image url in the clipboard */&#xa;        Toolkit tool = Toolkit.getDefaultToolkit()&#xa;        Clipboard clipboard = tool.getSystemClipboard() //get ClipBoard&#xa;        if (clipboard.isDataFlavorAvailable(new DataFlavor(&quot;application/x-java-jvm-local-objectref; class=java.lang.String&quot;))) {&#xa;            str = clipboard.getData(new DataFlavor(&quot;application/x-java-jvm-local-objectref; class=java.lang.String&quot;))&#xa;            //get the content as a string&#xa;            def input = new File(findAbsolutePath(str)) //try to open the file&#xa;            if (input.exists()) { //if it exists&#xa;                fSrc = input.toURI().toString(); //sets urlField&#xa;                currentImage.imgFromUrl(findAbsolutePath(str)) //ok let&apos;s try to set the file as an image&#xa;                getImageDimensions(currentImage.curImg) //update the dimensions fields with the original size&#xa;                previewPane.preferredSize = getMaxDimensions()&#xa;                previewPane.pack()&#xa;                previewPane.visible = true&#xa;            }&#xa;        }&#xa;&#xa;        urlField.text = fSrc //show the existing image path&#xa;        if (cb.itemCount &gt; 0 &amp;&amp; !previewPane.visible) {&#xa;            //if the path exists and the clipboard does not contains an image url&#xa;            currentImage.imgFromUrl(findAbsolutePath(cb.selectedItem))&#xa;            getImageDimensions(currentImage.curImg) //update the dimensions fields with the original size&#xa;            previewPane.preferredSize = getMaxDimensions()&#xa;            previewPane.pack()&#xa;            previewPane.visible = true&#xa;        }//if&#xa;    }//panel&#xa;}//frame&#xa;&#xa;btCancel.actionPerformed = {&#xa;    previewPane.dispose()&#xa;    dialogue.dispose()&#xa;}&#xa;&#xa;dialogue.windowClosed = {&#xa;//logger.info(&apos;bye&apos;)&#xa;    previewPane.dispose()&#xa;}&#xa;&#xa;//Slider response to keyPressed&#xa;scaleSlider.keyPressed = { event -&gt;&#xa;//overloading of the default behaviour if snapToTicks = false&#xa;//ie left key = -1 / right key = +1&#xa;    def move = 0&#xa;//if SHIFT move faster&#xa;    if (event.modifiers == 1) {&#xa;        move = 10&#xa;    }&#xa;    switch (event.keyCode) {&#xa;        case KeyEvent.VK_LEFT:&#xa;            scaleSlider.value -= move&#xa;            break&#xa;        case KeyEvent.VK_RIGHT:&#xa;            scaleSlider.value += move&#xa;            break&#xa;    }&#xa;}&#xa;&#xa;/*&#xa;* functions&#xa;*/&#xa;&#xa;def String insertTag(text, String htmlTag) {&#xa;    if (text == null)&#xa;        text = &quot;&quot;&#xa;    if (!text.startsWith(&quot;&lt;html&gt;&quot;))&#xa;        text = &quot;&lt;html&gt;&lt;head/&gt;&lt;body&gt;${text}&lt;/body&gt;&lt;/html&gt;&quot;&#xa;    return text.replace(&quot;&lt;/body&gt;&quot;, htmlTag + &quot;&lt;/body&gt;&quot;)&#xa;}&#xa;&#xa;def String imageTag(String url, String width, String height) {&#xa;// logger.info(&quot;url : &quot; + url)&#xa;    String linkType = config.getProperty(&apos;links&apos;)&#xa;    def srcURL = url //url src to be inserted&#xa;    if (&apos;relative&apos;.equals(linkType)) {&#xa;        srcURL = findRelativePath(node.map.file, url)&#xa;    }&#xa;&#xa;    def attribs = [&quot;src=\&quot;${srcURL}\&quot;&quot;]&#xa;    if (width &amp;&amp; Integer.parseInt(width) &gt; 1)&#xa;        attribs &lt;&lt; &quot;width=&apos;${width}&apos;&quot;&#xa;    if (height &amp;&amp; Integer.parseInt(height) &gt; 1)&#xa;        attribs &lt;&lt; &quot;height=&apos;${height}&apos;&quot;&#xa;    def imageURL = &quot;&quot;&#xa;    if (imagePath.selected) {&#xa;        imageURL = url&#xa;        if (&apos;relative&apos;.equals(linkType)) {&#xa;            imageURL = findRelativePath(node.map.file, url)&#xa;        }&#xa;    } else if (customUrl.selected) {&#xa;        imageURL = customUrlField.text&#xa;    }&#xa;    if (imageURL &amp;&amp; System.properties[&apos;os.name&apos;].toLowerCase().contains(&apos;windows&apos;))&#xa;        imageURL = imageURL.replaceAll(&quot; &quot;, &quot;%20&quot;)&#xa;&#xa;    def imageLink = &quot;&quot;&#xa;    if (noLink.selected) {&#xa;        &quot;&lt;img ${attribs.join(&apos; &apos;)} /&gt;&quot;&#xa;    } else {&#xa;        if (legend.selected) {&#xa;            &quot;&lt;div&gt;&lt;img ${attribs.join(&apos; &apos;)} /&gt;&lt;br&gt;&lt;div&gt;&lt;a href=\&quot;${imageURL}\&quot;&gt;Picture link&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&quot;&#xa;        } else {&#xa;            &quot;&lt;a href=\&quot;${imageURL}\&quot;&gt;&lt;img ${attribs.join(&apos; &apos;)} /&gt;&lt;/a&gt;&quot;&#xa;        }&#xa;    }&#xa;}&#xa;&#xa;def getImageDimensions(Image image) {&#xa;    iWidth = image.getWidth()&#xa;    iHeight = image.getHeight()&#xa;    iProportion = iWidth / iHeight&#xa;    widthField.text = iWidth //fill the images dimensions fields&#xa;    heightField.text = iHeight&#xa;}&#xa;&#xa;def getMaxDimensions() {&#xa;    def resolution = Toolkit.defaultToolkit.screenSize&#xa;    w = Math.min(widthField.text.toInteger(), resolution.width - 10).toInteger()&#xa;    h = (w / iProportion).toInteger()&#xa;    if (h &gt; (resolution.height - 10)) {&#xa;        h = (resolution.height - 10).toInteger()&#xa;        w = (h * iProportion).toInteger()&#xa;    }&#xa;    Dimension dim = [w, h]&#xa;    return dim&#xa;}&#xa;&#xa;URL toUrl(String urlString) {&#xa;    try {&#xa;        return new URL(urlString)&#xa;    } catch (Exception e) {&#xa;        logger.warn(&quot;invalid url&quot;, e)&#xa;        return null&#xa;    }&#xa;}&#xa;&#xa;String findRelativePath(File baseFile, String path) {&#xa;    if (baseFile == null) {&#xa;        ui.errorMessage(&apos;The map must be saved if you want to use relative paths&apos;)&#xa;        return path&#xa;    }&#xa;// we took care to ensure that path contains a protocol&#xa;    if (!path.startsWith(&apos;file:&apos;)) {&#xa;// relative paths are only applicable for local files (file protocol)&#xa;        return path&#xa;    }&#xa;// TODO: check if this works:&#xa;//    return LinkController.toRelativeURI(baseFile, path)&#xa;    String base = baseFile.toURI().toString()&#xa;    String[] basePaths = base.split(&quot;/&quot;);&#xa;    String[] otherPaths = path.split(&quot;/&quot;);&#xa;&#xa;//finding the # of path to be relative to&#xa;    int n = 0;&#xa;    for (; n &lt; basePaths.length &amp;&amp; n &lt; otherPaths.length; n++) {&#xa;//string comparison, so be careful of capitalization&#xa;        if (basePaths[n].toLowerCase().equals(otherPaths[n].toLowerCase()) == false)&#xa;            break;&#xa;    }&#xa;    StringBuffer tmp = new StringBuffer(&quot;&quot;);&#xa;    for (int m = n; m &lt; basePaths.length - 1; m++)&#xa;        tmp.append(&quot;../&quot;);&#xa;    for (int m = n; m &lt; otherPaths.length; m++) {&#xa;        tmp.append(otherPaths[m]);&#xa;        tmp.append(&quot;/&quot;);&#xa;    }&#xa;    result = tmp.toString();&#xa;    if (result.endsWith(&quot;/&quot;)) {&#xa;        result = result.substring(0, result.length() - 1)&#xa;    }&#xa;    return result.toString();&#xa;}&#xa;&#xa;String findAbsolutePath(String path) {&#xa;    path = (path =~ / \([cdn]\)/).replaceFirst(&quot;&quot;) //remove (c) or (d) or (n) from the combo&#xa;    if (!path.startsWith(&apos;file:&apos;)) {&#xa;        try {&#xa;            File parentFolder = new File(node.map.file.getParent());&#xa;            File b = new File(parentFolder, path);&#xa;            return b.getCanonicalPath();&#xa;        } catch (Exception e) {&#xa;//ui.errorMessage(&quot;Please save the file first!&quot;);&#xa;            return path&#xa;        }&#xa;    } else {&#xa;        path = (path =~ /file:/).replaceFirst(&quot;&quot;)&#xa;        path = (path =~ /(\/){2,}/).replaceAll(&quot;/&quot;)&#xa;        return path&#xa;    }&#xa;}&#xa;&#xa;String findURI(String path) {&#xa;    path = (path =~ / \([cdn]\)/).replaceFirst(&quot;&quot;) //replace the (c) or (d) from the combo&#xa;    if (!path.startsWith(&apos;file:&apos;)) {&#xa;        File parentFolder = new File(node.map.file.getParent())&#xa;        try {&#xa;            File b = new File(parentFolder, path)&#xa;            return b.toURI()&#xa;        } catch (e) {&#xa;            ui.errorMessage(textUtils.getText(&apos;addons.insertInlineImage.URI.invalid&apos;))&#xa;        }&#xa;        return path&#xa;    } else {&#xa;        return path&#xa;    }&#xa;}&#xa;&#xa;public static BufferedImage getBufferedImage(Image image) { //workaround for macOSX clipboard images&#xa;    if (image == null) return null;&#xa;    def w = image.getWidth();&#xa;    def h = image.getHeight();&#xa;    BufferedImage bufferedImg = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);&#xa;    Graphics2D graph2D = bufferedImg.createGraphics();&#xa;    graph2D.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BICUBIC);&#xa;    graph2D.drawImage(image, 0, 0, w, h, null); //drawing the image on the bufferedImage graphic&#xa;    graph2D.dispose();&#xa;    return bufferedImg;&#xa;}&#xa;&#xa;&#xa;/*&#xa;* Program Logic :&#xa;* show the dialog box&#xa;*&#xa;*/&#xa;&#xa;ui.addEscapeActionToDialog(dialogue) //close with esc key&#xa;ui.addEscapeActionToDialog(previewPane)&#xa;dialogue.visible = true&#xa;def vars = builder.variables&#xa;if (vars.ok) { //modal functionality&#xa;    def urlString = vars.url.text&#xa;    if (!urlString.matches(&apos;\\w+:.*&apos;))&#xa;        urlString = &quot;file:$urlString&quot;&#xa;    def imageTag = imageTag(urlString, vars.width.text, vars.height.text)&#xa;    if (!toUrl(urlString)) {&#xa;        ui.errorMessage(textUtils.getText(&apos;addons.insertInlineImage.url.invalid&apos;))&#xa;    } else {&#xa;        SwingUtilities.invokeLater {&#xa;//if the image is already existing, we delete it before inserting&#xa;// the new modified one.&#xa;&#xa;//src of the image we want to insert&#xa;            def srcMatcher = imageTag =~ /src=[&apos;&quot;]([^&apos;&quot;]+)[&apos;&quot;]/&#xa;&#xa;            if (vars.details.selected) {&#xa;                if (srcMatcher.count &gt; 0) {&#xa;                    def match = node.detailsText =~ srcMatcher[0][1] //the url in src tag&#xa;                    if (match.count &gt; 0) {&#xa;//if there is a link&#xa;                        def toBeReplaced = &quot;(?s)&lt;a[^&lt;]+&lt;img[^&gt;]+src=[&apos;\&quot;]&quot; + match[0] + &quot;[&apos;\&quot;][^&lt;]+&lt;/a&gt;&quot;&#xa;                        pMatch = node.detailsText =~ toBeReplaced&#xa;&#xa;                        if (pMatch.count &lt; 1) {&#xa;//if there is no link&#xa;                            toBeReplaced = &quot;&lt;img.*src=[&apos;\&quot;]&quot; + match[0] + &quot;[^&gt;]*&gt;&quot;&#xa;                        }&#xa;&#xa;                        node.details = (node.detailsText =~ toBeReplaced).replaceFirst(imageTag)&#xa;                    } else {&#xa;                        node.details = insertTag(node.detailsText, imageTag)&#xa;                    }&#xa;                }&#xa;            }&#xa;            if (vars.core.selected) {&#xa;                if (srcMatcher.count &gt; 0) {&#xa;                    def match = node.text =~ srcMatcher[0][1]&#xa;                    if (match.count &gt; 0) {&#xa;                        def toBeReplaced = &quot;(?s)&lt;a[^&lt;]+&lt;img[^&gt;]+src=[&apos;\&quot;]&quot; + match[0] + &quot;[&apos;\&quot;][^&lt;]+&lt;/a&gt;&quot;&#xa;                        pMatch = node.text =~ toBeReplaced&#xa;&#xa;                        if (pMatch.count &lt; 1) {&#xa;//if there is no link&#xa;                            toBeReplaced = &quot;&lt;img.*src=[&apos;\&quot;]&quot; + match[0] + &quot;[^&gt;]*&gt;&quot;&#xa;                        }&#xa;                        node.text = (node.text =~ toBeReplaced).replaceFirst(imageTag)&#xa;                    } else {&#xa;                        node.text = insertTag(node.text, imageTag)&#xa;                    }&#xa;                }&#xa;            } //if&#xa;            if (vars.note.selected) {&#xa;                if (srcMatcher.count &gt; 0) {&#xa;                    def match = node.note =~ srcMatcher[0][1]&#xa;                    if (match.count &gt; 0) {&#xa;                        def toBeReplaced = &quot;(?s)&lt;a[^&lt;]+&lt;img[^&gt;]+src=[&apos;\&quot;]&quot; + match[0] + &quot;[&apos;\&quot;][^&lt;]+&lt;/a&gt;&quot;&#xa;                        pMatch = node.note =~ toBeReplaced&#xa;&#xa;                        if (pMatch.count &lt; 1) {&#xa;//if there is no link&#xa;                            toBeReplaced = &quot;&lt;img.*src=[&apos;\&quot;]&quot; + match[0] + &quot;[^&gt;]*&gt;&quot;&#xa;                        }&#xa;                        node.note = (node.note =~ toBeReplaced).replaceFirst(imageTag)&#xa;                    } else {&#xa;                        node.note = insertTag(node.note, imageTag)&#xa;                    }&#xa;                }&#xa;            }//if&#xa;            if (vars.extObj.selected) {&#xa;// logger.info(&apos;---- Dans Extension ---&apos;)&#xa;// logger.info(&apos;AVANT : &apos;+node.externalObject.uri)&#xa;                def imgUri = vars.url.text&#xa;/* - can not be relative by script  : setUri(String) says that file names are not usable for displaying images&#xa;  if (&apos;relative&apos;.equals(config.getProperty(&apos;links&apos;))) {&#xa;  imgUri = findRelativePath(node.map.file, imgUri)&#xa;}&#xa;*/&#xa;//imgUri = (imgUri =~/%20/).replaceAll(&quot; &quot;)&#xa;// logger.info(&apos;VOULU : &apos;+imgUri)&#xa;&#xa;                node.externalObject.setUri(imgUri)&#xa;// logger.info(&apos;APRES : &apos;+node.externalObject.uri)&#xa;&#xa;                node.externalObject.zoom = vars.scale.value / 100.0&#xa;            }//if&#xa;        } //invoke later&#xa;    }&#xa;} else {&#xa;//cancel&#xa;}&#xa;" ID="ID_731167271" CREATED="1750948476381" MODIFIED="1750948476413"/>
</node>
</node>
<node TEXT="license" POSITION="top_or_left" ID="ID_770036552" CREATED="1319814596814" MODIFIED="1750948378340"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&#xa0;node, either as plain text or as HTML.
    </p>
  </body>
</html></richcontent>
<node TEXT="This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the&#xa;GNU General Public License for more details." ID="ID_1912443753" CREATED="1319814828201" MODIFIED="1319814831174"/>
</node>
<node TEXT="preferences.xml" POSITION="top_or_left" ID="ID_1267015903" CREATED="1313132482700" MODIFIED="1750948378345"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="color: #000000; font-family: SansSerif, sans-serif;">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </span>
    </p>
    <p>
      <span style="color: #000000; font-family: SansSerif, sans-serif;">Every property in the configuration should receive a default value in <i>default.properties</i>&#xa0;node.</span>
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="default.properties" POSITION="top_or_left" ID="ID_1363888784" CREATED="1313132482695" MODIFIED="1750948378348">
<attribute_layout NAME_WIDTH="84.84076 pt" VALUE_WIDTH="84.84076 pt"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties are used for:
    </p>
    <ul>
      <li>
        Each property defined in the preferences should have a default value in the attributes of this node.
      </li>
      <li>
        For each menu item with an icon add an attribute with the icon key (use developer tool menuItemInfo) as key and the icon path as value. Example: '${name}.icon': '/images/${name}-icon.png'
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node TEXT="translations" POSITION="top_or_left" ID="ID_1289155258" CREATED="1313166589769" MODIFIED="1403110421625"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least
    </p>
    <ul>
      <li>
        'addons.${name}' for the add-on's name
      </li>
      <li>
        'addons.${name}.description' for the description, e.g. in the add-on overview dialog (not necessary for English)
      </li>
      <li>
        'addons.${name}.&lt;scriptname&gt;' for each script since it will be the menu title.
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="en" ID="ID_306398849" CREATED="1313166602328" MODIFIED="1319485185475">
<attribute_layout NAME_WIDTH="84.84076 pt" VALUE_WIDTH="84.84076 pt"/>
<attribute NAME="addons.${name}" VALUE="Insert Inline Image"/>
<attribute NAME="addons.${name}.url.invalid" VALUE="Invalid URL"/>
</node>
<node TEXT="de" ID="ID_1406372206" CREATED="1313166602328" MODIFIED="1319485179345">
<attribute_layout NAME_WIDTH="84.84076 pt" VALUE_WIDTH="157.29936 pt"/>
<attribute NAME="addons.${name}" VALUE="Inline-Grafik einfügen"/>
<attribute NAME="addons.${name}.url.invalid" VALUE="Ungültige URL"/>
</node>
<node TEXT="fr" ID="ID_1247799679" CREATED="1313166602328" MODIFIED="1371747210546">
<attribute_layout NAME_WIDTH="84.84076 pt" VALUE_WIDTH="157.29936 pt"/>
<attribute NAME="addons.${name}" VALUE="Image à la volée"/>
<attribute NAME="addons.${name}.url.invalid" VALUE="URL invalide"/>
</node>
</node>
<node TEXT="deinstall" POSITION="top_or_left" ID="ID_26194671" CREATED="1313133194687" MODIFIED="1403111592015" HGAP_QUANTITY="50 px" VSHIFT_QUANTITY="-100 px"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html></richcontent>
<attribute_layout NAME_WIDTH="18.34395 pt" VALUE_WIDTH="204.53503 pt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml "/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/${name}.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/insertInlineImage.png"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/insertInlineImage-icon.png"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/insertInlineImage-screenshot-1.png"/>
<attribute NAME="delete" VALUE="${installationbase}/scripts/${name}.groovy"/>
</node>
<node TEXT="zips" POSITION="bottom_or_right" ID="ID_482322757" CREATED="1316303875303" MODIFIED="1403110985625" HGAP_QUANTITY="60 px" VSHIFT_QUANTITY="-30 px"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.3.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="images" POSITION="bottom_or_right" ID="ID_723709077" CREATED="1322727983867" MODIFIED="1403110985640" HGAP_QUANTITY="50 px" VSHIFT_QUANTITY="-240 px"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&#160;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
      <li>
        <i>${name}-screenshot-1.png</i>, like <i>oldicons-theme-screenshot-1.png</i>. This will be used in the app-on details dialog. Further images can be included but they are not used yet.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&#160;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html></richcontent>
<node TEXT="${name}.png" FOLDED="true" ID="ID_1002402838" CREATED="1322728032545" MODIFIED="1322728042835">
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAADUAAAArCAYAAADYOsCbAAAAAXNSR0IArs4c6QAAAAZiS0dEAP&#xa;8A/wD/oL2nkwAAAAlwSFlzAAALEwAACxMBAJqcGAAAAAd0SU1FB9sMAgA2FT8VFlgAAAP9SURB&#xa;VGje7ZhfaFt1FMc/J2kva1ddbcEONol2FcFunYgMQctMGamgq4Lgi4KlroUyXxw3MxVf9GUpCT&#xa;4IvqT+RfBFRSxzs0ESZdoNCkNn4kB0rmJH27VN7Zity22OD8ltw9C0Tf8k7fKDH9zf/fG73A/n&#xa;nN853yOqylYbDrbgKEHdQlDi9opXBdxFDpXvjxYJoKqucuI2MRVV9+q/tTZzGZZKP3u9MiAimp&#xa;6tKv10rsW5qNfeE5XWPhVwbVBMBQkS8aiqqKqoPxzk7b7Q0j+Q+1zcKwMtRLD3Y01dYbzRyxsE&#xa;ZULA3bKwfIVTZvgXgPr8z4nrgyDQ7O6ytxsD+M3gKVYbk2UFDOd6wMNT4hEIreWHCwl1CQ6G0W&#xa;/8CtEtknx1uN38FrzRSPbbXpHAat2voBVFY0BbY7SEF29HUZ9fWa3lpFSll6AKN/K6/URENOO3&#xa;R0ROPwaeFCQtKP8eZt9VrdpUUDaQiMgL8OYxOHQvaAKMGZAhqNxUlsoCcnbCO8ehvQFSoyATwB&#xa;QwD7ppoLKAjG74uAee2QU3RqB8AmQMUpOABdamgBIRh6qmRGT7y/CpDx6vzQBNgoyDjgEJSN0A&#xa;o+ihMhZK7ROpew36j8GBKrCuZCw0DoyCTkPqIpSNwIeFhsqZfG2Xe0TE9SR89RLcZ4A1BmUTix&#xa;bSBFhxMOLgH1TtKdo8ZQMdEKnfj7zVDTurwBqFsqvpGNLRNFDqpzTQG4OqPSLiKLTMX8pSzkdh&#xa;z+U9pJ4b5sWnLboN4fYrCuNpl7NiYPwMr55TPVHUFYWIODOPdTN1JA86ueP0XQx2VBCKqTANOg&#xa;XWj2BcBN851RMiIstryPyHzO8lEL9pnXXW1deaJfm93oGlrP5/7qcANQbVd99G9dU56pq3o7V3&#xa;MvaeQy/9DhoD4zvoOKvam11hLL89EEvLeD9BfGLuzV5H+sxFyU+oq2lR8kcIeoJ5xpTKjh01Uz&#xa;XIfIraim2U/zHLrgermbq2m48+B+cQzud/U31/5UC2zG/0L0j8m9c5JL+7mS5PPle6quqzIk/c&#xa;k+ShHyr4uqacCoeBY2ic/X8m2DcLh2fUOmnnr/WV/KaHNvwLb9r4tQkIrxTqkEjtYTj+9yx7qx&#xa;Ikz8+RHElQNz3HZ4BPVefs/LX+kj8Ypj/QQFtGOPbTcCEf93sAzGtw/yhM/jNDdfyvyk8Ss9qh&#xa;ql9mAW1AjafD7SZwJrrQmImeIRTOB6oMHp6Coxdg98l5PaLXr5+X9HDY7rmRkj9CC/bt14IZNt&#xa;e/7bzB8ws6wRxA1bXCtnMxDXGL9Hdmux9mOwrDuU7tBCqL2Toxk4FM7lQ8Ic1lJVVFgKNAFbBt&#xa;M/clVPX1UousBFWCKkHd2lD/AimUtl7ut9oeAAAAAElFTkSuQmCC" ID="ID_1677977540" CREATED="1750948476495" MODIFIED="1750948476501"/>
</node>
<node TEXT="${name}-icon.png" FOLDED="true" ID="ID_1000617651" CREATED="1322728032545" MODIFIED="1322728054646">
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAADUAAAArCAYAAADYOsCbAAAAAXNSR0IArs4c6QAAAAZiS0dEAP&#xa;8A/wD/oL2nkwAAAAlwSFlzAAALEwAACxMBAJqcGAAAAAd0SU1FB9sMAgA2FT8VFlgAAAP9SURB&#xa;VGje7ZhfaFt1FMc/J2kva1ddbcEONol2FcFunYgMQctMGamgq4Lgi4KlroUyXxw3MxVf9GUpCT&#xa;4IvqT+RfBFRSxzs0ESZdoNCkNn4kB0rmJH27VN7Zity22OD8ltw9C0Tf8k7fKDH9zf/fG73A/n&#xa;nN853yOqylYbDrbgKEHdQlDi9opXBdxFDpXvjxYJoKqucuI2MRVV9+q/tTZzGZZKP3u9MiAimp&#xa;6tKv10rsW5qNfeE5XWPhVwbVBMBQkS8aiqqKqoPxzk7b7Q0j+Q+1zcKwMtRLD3Y01dYbzRyxsE&#xa;ZULA3bKwfIVTZvgXgPr8z4nrgyDQ7O6ytxsD+M3gKVYbk2UFDOd6wMNT4hEIreWHCwl1CQ6G0W&#xa;/8CtEtknx1uN38FrzRSPbbXpHAat2voBVFY0BbY7SEF29HUZ9fWa3lpFSll6AKN/K6/URENOO3&#xa;R0ROPwaeFCQtKP8eZt9VrdpUUDaQiMgL8OYxOHQvaAKMGZAhqNxUlsoCcnbCO8ehvQFSoyATwB&#xa;QwD7ppoLKAjG74uAee2QU3RqB8AmQMUpOABdamgBIRh6qmRGT7y/CpDx6vzQBNgoyDjgEJSN0A&#xa;o+ihMhZK7ROpew36j8GBKrCuZCw0DoyCTkPqIpSNwIeFhsqZfG2Xe0TE9SR89RLcZ4A1BmUTix&#xa;bSBFhxMOLgH1TtKdo8ZQMdEKnfj7zVDTurwBqFsqvpGNLRNFDqpzTQG4OqPSLiKLTMX8pSzkdh&#xa;z+U9pJ4b5sWnLboN4fYrCuNpl7NiYPwMr55TPVHUFYWIODOPdTN1JA86ueP0XQx2VBCKqTANOg&#xa;XWj2BcBN851RMiIstryPyHzO8lEL9pnXXW1deaJfm93oGlrP5/7qcANQbVd99G9dU56pq3o7V3&#xa;MvaeQy/9DhoD4zvoOKvam11hLL89EEvLeD9BfGLuzV5H+sxFyU+oq2lR8kcIeoJ5xpTKjh01Uz&#xa;XIfIraim2U/zHLrgermbq2m48+B+cQzud/U31/5UC2zG/0L0j8m9c5JL+7mS5PPle6quqzIk/c&#xa;k+ShHyr4uqacCoeBY2ic/X8m2DcLh2fUOmnnr/WV/KaHNvwLb9r4tQkIrxTqkEjtYTj+9yx7qx&#xa;Ikz8+RHElQNz3HZ4BPVefs/LX+kj8Ypj/QQFtGOPbTcCEf93sAzGtw/yhM/jNDdfyvyk8Ss9qh&#xa;ql9mAW1AjafD7SZwJrrQmImeIRTOB6oMHp6Coxdg98l5PaLXr5+X9HDY7rmRkj9CC/bt14IZNt&#xa;e/7bzB8ws6wRxA1bXCtnMxDXGL9Hdmux9mOwrDuU7tBCqL2Toxk4FM7lQ8Ic1lJVVFgKNAFbBt&#xa;M/clVPX1UousBFWCKkHd2lD/AimUtl7ut9oeAAAAAElFTkSuQmCC" ID="ID_14245878" CREATED="1750948476503" MODIFIED="1750948476505"/>
</node>
<node TEXT="${name}-screenshot-1.png" FOLDED="true" ID="ID_1150955427" CREATED="1322728032545" MODIFIED="1322954458469">
<node TEXT="iVBORw0KGgoAAAANSUhEUgAAARwAAACnCAYAAADDjuPiAAAAAXNSR0IArs4c6QAAAAZiS0dEAP&#xa;8A/wD/oL2nkwAAAAlwSFlzAAALEwAACxMBAJqcGAAAAAd0SU1FB9sMBAIAH3Az5YEAACAASURB&#xa;VHja7L1XkFxXmuf3uzbzpneVWRblUFVAwXuAAG3TdPfMbs+MdmYjFKGXjZAUoRc9KmJ33vZNz3&#xa;pVhBQh7UqxOzMtdWuWbJJNTxAeqAJQ3vuq9D7zmqOHLBbhCIJNgMPpvr8IBLIyrzvfOed/v/Md&#xa;J1WK+f9ekuV/g4uLi8sLRDiiqsqK0i2EOOuaw8XF5YUiSRX1BeoZQrg2dnH556cL0uO1+Q+szI&#xa;9e6wUJjkA4gmY5T2NrBWFbbi66uPzEUQNhvO19yIqyJxRCCIQQ1Ot1GvU6gmcTHlmS8fn9aJr2&#xa;kOi8EMERAurpDWrX30dt1lFVFZ6gmi4uLj8NhOPQaNSx9x0gePoNkJQ9wclmMxTyeWRZQVaUZ3&#xa;I4LNMin8uRTKUwfL490XlhHk598T4eRSb2q/8WWfe4Oeri8lMWHAHN5QnSl99DHL2I5PUBYJom&#xa;uVwWw/Dh8/kBCRAgSUjisXbN7u+tv0rFIrlcFq9hvFjBEQLsWgVPMIJsBEBR3Rx1cfkJIwFaJI&#xa;lTKYBw9r63LAvHcfD5/Ni23RIboNloIksSqqa1/m42qFXLGD4/usdAAryGQalYeLjZ9gI184Fm&#xa;lE1+vUSwM8KTHLJioYw/7KO2s0nRBE8gRjzkfY7P0qRUsAmGjeflf5LNVYnEAshuWX1mquUyei&#xa;DAP+Xrp1Qo4wsHUF7gPeqVMqr/xaWzXiojBQN4XoDoPMl7cByBEA6O45DLbtOo57HMMopqoGkB&#xa;TLMM1Cnl09imIJ7cT6qzH5BwHOfbBcdsFFldKNI50oVHknCcGiv3Nwn1hVi8cY+c4+CLdXD4wH&#xa;7UZpadnERnTxzlO+IzViPNzY/HOfAXr9Dp0x/6za5scOP2HB0JL2MTszjCy8Chk4RH9z23DMsu&#xa;zzN2r8qZX5zE/xyuZ+ZmuXkvy8mTJ4n5d9MjbLbnp8goSYZ7EyhuyOohnFqa61fH8PmD+Nr6GO&#xa;lv+9FtZFc3uXFzgqAvSLBniP0dYeTn/AxOI8e1K7foOHCGwc4gz+3ywia9NM2246M+s4g+NMqh&#xa;gTZetAkFAuG0xKZaLlHIzdO7P8S9epZrK9N4KzrHve3EpTrxwApmeZlK7hXsVC+SJO/2boknC0&#xa;6zmmXm3hrRkS48gHAqzN2ZoSu0j/W1Il3nhqitLXNnHIbiNebmFNp64s/wtnAobZdwnuAp5FeX&#xa;qNZNist1jM4L/PKl3hfw9jGplOrPLePXp5doNiL4vQ+Ip2OyubjEhioY6EmgKK7IPORZbG9Qql&#xa;koVoadspeB3rYf10ZCUFhboVKzUBs7FIjS3/78BaeS2aJYh8OJ4PMVA8dia3GZZTtCoFTlR9Nq&#xa;sdtT5bSEw+NVuGdu8h8XvuR+c4ql4CqvN3r5n6Jd9Pk2qOrbzGXO4ggHSbSC0Q/2qD+zE6F5Y/&#xa;QPDGMrNT6ZqdIb/wOSbOa59fk0dSXEkVOH8CsWy+ubBLqOI81+wfzYEv9hPkT3/m6q80tkHQtd&#xa;b+PEhTMo5VVmZmaoe9oYPX6K4ZQfp7jEtVuTLG2W6B0c4sSJgyxd/4LrM2vYqMQ7ejh6/iLGQw&#xa;V/ieuXr7NWVEgOjnLhWIjLv/6ILWGj6B66u/u4cO4Uml3h2pVbLC0tE+we5OiZC3T4wTErzOca&#xa;6LEQM/cnGDh4EB8V7k/OYioxutqiqFaBq1/eZmlphXD3IEdPn8RcvQ/JEXpiBuXNJRbTNsOHB9&#xa;GtMvcml0l2dLGxMM3iwhxyvJfDp86RFKt8/NvPyeLgj3Rz+sJpeuKB1tvazPLZ373PqmWiaHFO&#xa;XDiLXltndnqGihZn9NhJRto9TH7+OfdWtzCVKCcunGUoZvLZFzdZ2c6QSPZw+tIlxOY8OxUvQ0&#xa;d60Kgyc30eb3eQqQ+/ZEPYeLxJTl44g5xeYGJhnlxZ49CpMxzZH+L21dssLS7h7xzg6NkLdHry&#xa;XP/kK+Y20viTA5y5cJJU0MPm1hbe9n726XXyws/s5Q8YX9xEDiZIxQM4pQw7TQ/Dh45wYn8nhY&#xa;0Frl2+wVZFJzl0mNfOD2JnZvnq5hTrWzksy8PBl17hZK+HG1fvsLS0QqRnkGNnL5DUMlz55CoL&#xa;G1nCncOcvXCcmAdWNrbwdx+m2ylSD4aRrQI3vrjO3NoGeqSH0xdO0a3s8PG1u6xnyrQn+zj/8m&#xa;k271zm6uQyFuCLdzB8/CUOJ01ufnyZ2Y0dPLFezlw4RWfUYHtrAy3WQXP1Jv/507vUVZVIsp3h&#xa;4+cZTvqwi0tcvzXJ0laZvsFhTpwYYeHq59yYXccGAokODp68yEjSS3Z5kpsTU2zumAweOUZ7Wx&#xa;fdtodyMfuonHPltx8ymy8jhE6yq5cLl05RnL7GF9enaaoKnlgH+w+f5cS+II1dO65t5TAtD6MX&#xa;XubkSPsTwwMC9ppTjuMgHEGoqfM3nlGMWC//c+O3fOq7z1uNEn1SGmHWdgXKAYnHutHVZ3+xm9&#xa;RqFaqlCpFQGwrVZxNmoA5glrh2/R6pSBvd/f34dAWrvMVqWuLoiRj55RhDBzo5cbAdWZT48stF&#xa;jv2r10l5dLzSNl/eWSbRd4iAlWZr+h5J3zB3fn+TUqyP4yd62cnnWdwsUN6qEu87xtGBEMv3bv&#xa;LJ+1/x2nHf3vMEk+2MHDtJX2WDW2PTrHYNUinqnPqLi4SbeW6Nz3FtNkNXbZJtS+bISy9Rz62z&#xa;MjVD+4n91Ao7lC0vp4aCjF++g9HRR6dYZ3FpFcNWEEoET22GtK1x7OJFqtl1VmeWMWpbbFVjdE&#xa;a6WbzzEe+vRIj39RKurLK0vIrqFFhKl+k7cgq5vM7y+Bj+AS+NRpBzf36WEBqRsE6lUgEUVLVO&#xa;fsPm8F++SofhxVCyfHFnidi+UXqcLFtzE8S9nawurBM/cp4DnRGiqTATH79LQUnwylujrI3f4d&#xa;rNKQ76M6xuRRg80gOYrN5fIBEboJRROPFXr9Km6XikNa6ubtM7eobTYYNANMrWxBU2G4JD5y/Q&#xa;zK+xPDGFlmiwvFpl5NLrdAT8xINehJljfadO96k41YlbbDlRjEKV9v0nGEk6XP1qguDIMV6ONp&#xa;lemmO5rY19HZ0cPCnRX1rl1vgU6wMe7r3/JXbnMV598xhzn16jnCkyV1gjbet7tl6ZmUN4cyyt&#xa;NDj86mu0+QJEDA27usV62uHA4Silq9PkCSPdnCEjRzn31mG86ETDEp//w2UKbYe4dNHLzJ17XJ&#xa;/ZILhdIdR9hBMHk2QWx5j84irRswlW1ssMnn+N7pCfWNSHsEusb1bpPJygsTOB4t3Hq68Nk5++&#xa;zZUPPiL4ywtMfnSTcryf48f3sZ0rsLBVoLRVJdF/jCP742zNjzF19RZdr3Rz88Y0ob5DHDkexO&#xa;P3s33zKltmBOMJMcriVpPhSxfZ5zeZvDfO5bE4XYUSemg/Fy8OUF4e4+7lz+kOHOfau19iPWDH&#xa;UqbylNE1Le/GcRwcu+Wt7POFSES2qAcqyItQ8tf4dXGLZLXOMRWEUHFsB0lm1zP63oLTZHniNi&#xa;vlRRQtxFt/cQF1Z+wZGzNQwGZtPUshGuVn/+Y1QnKray27voAVaicZ0MijEEklSaZS2DULJINE&#xa;MknKK7M6dpPbX93GPz/fCm4ZXSR7fNz/+EvKfSvMy+A4OkfOBvCjEEkmSXamiHgtpv5hnpIw9u&#xa;Rv5eYnfDK2QrZYJDMr2He+H1n205ZK0ibHKc8tsb62ytz6PW5tNpgbvwlIhHtOMnJiP4WNFfRY&#xa;io5YG5kArK9vIzvryMEu4uYOaeosjI1zK2MzOyYBErG+07x6pJ3FqUUKZY1VYdAdllhd3KFSX0&#xa;MOtVNdu8vtm+ssTE8AAiU0TEdXN6oeJJVKEaLB/PWv+PzL25Ac5Nz5AcCgLZki5VPYmBjjzle3&#xa;8C3s2sjbSfdAL6qusDFzm0bjIG+16eS3K+w79zL7UiFC5R0+vJ2jNvAtQUTZR1sqRUoTLF6boi&#xa;E6GB7updWQrHHn/n1ur9SYv3sLgEDncUYO9uPxmixP3IBjl0gKQXVjlgoekhE/29/4zERTKTr7&#xa;fbRdX8Ifi9PZ72Ph9ieUcnkW7l/hi4kNsuUSO5Myg+f7ECLMS68eIy43yUcD7FBn4c4Ytwpiz9&#xa;bx/rMMv5HCCCwye+8WnH6NpBDk1udo+OIkgx7Ku8+fXi0QP3Ga3lSkVVbrmxTTTY79/CD7ggra&#xa;1hJ3Vrbx7JXNDuIBi7s3x1HCg2hqk9X7V3EOXySZFNQzSxQdjQPxELUd8EfiJNs76Un5WPoPn5&#xa;PLrjHxyWUq/SssSK0ye9QJYKASTaVIpZKE9TrTv55nLV2gbgV56cR+djuoH7Ddk/AST6ZIRQ3k&#xa;wjaX59I0/DLBeBvJVAedCYWpe9dJ53M4ToiLD9hx+zuaVHvejRDgCOxmEUVsUanMIZwcpmKxaD&#xa;cpOgIhqyDrOI7d6kAXTxEcVfWieWrsFBwiEQUzt00z6MNQvPSOnuTo20PMXr9DemGBzu8RfbVQ&#xa;6OhMkIwr3Ll5j2OnDhFy6iwuF2jrPoFHkZ8aO9c8fkZGD3L2l/+CpK/1nbAyDJw+TfjCm5zsCQ&#xa;KgqDZ3frtM3d5tTxey6IaOtusWQpmVxTX6zvySvxmS+fj//OqxSL+katimTLyzi5PtMV67dAZV&#xa;BiQFza5wb6NCcugIEhodPSmW56eZoUH7/gOoczuAQqJnH6f7U7x64QSyBJKkoFBkYeIzrr//FS&#xa;K6n7NH4O7KLdKmTe+JbjyLq4weCPHaO28T1AFk6vk5JveezEPfyYt0Hz3f6k8QO0w8aCPdx/Ch&#xa;Q5z+xZ/T7m99p+oa/X/z15Q3Z/j731znTjKMZmgU8jnoDZLOF1GMED6vTa28RdU8gkd7ch7oXg&#xa;mnmadhg64AKERSnRyPhnj9lfNoSuuZNV3l53/1K7ZnvuQ3v/uM+F+9Tm4hgxYZIOiRn1i41QeC&#xa;OaojMEWRleVNhl7+S473NPngf7uGV5EQkiBTdoiHvim+8X19nPZ08Or5Y3u2VjWFX/zLFCv3Pu&#xa;Xdf/yctr9+idWlAtH2I3hVae9cI+CjUskjiCABkqSiGzrZQp0+v4fVdAnL14FSBvvrW8oynnoT&#xa;x5PinX/1V+QWr/Prjz4nEXoTa3ETNdRN2FCoAfbu292pZLERSJrBwOkzRC6+ycku/26Ztbj9m9&#xa;VvPAxFQW+YyJqMLNlULPCpj7cbLAugQanoEAy1BMlxWrGqrWwJfO0ou9LaykIJvWmCIoEEmZJD&#xa;PPyMQWMhEE7LAsJKYxcnoLnJweAy/4OnRmAzyJmGwjFFYzVzFCnUjiMEsnCeHjTWfTE6khJjH/&#xa;4jCyEvtVKZQN8xQh4Z3fBgBFMcHu7ji/FF6m0GG4vLfPJRGhXweGKcPHEQ3yO9UK1iKOENRzn6&#xa;xjmy96b44vMJXhoNkq7DwZ4EsuQgK+oDwWIJ3afvBsZkkgOH6U03ufPpbxGyjsfXzsnzowwfTD&#xa;J192Peva8j4WXo2CgNc4cbH79LejaCUzfpGDlNwm/RrN/l8s0k8bZ2Zse/5HcLFqtZk/aH7gWS&#xa;rKDIHnpHD5C/u8T777+HjEKsY4jRXom8pTGw+0aMtPfivXaTRWmQM6kwWwsqiuSld3SY/P0V3v&#xa;3deygoJLpGOHlykH1Rwf+1nOONM+/QFa8wfesWS/IhLsXDeAPH2GxO8+VH/wio+MK9HBjU0L3f&#xa;KIAsK+it2o7ZkPD4PXs2SvSO0rdZ4+5nv2VM1tGNFMfODLJz5zaL2TyK7kP3BGjf38Pnd6/zdy&#xa;tXkRoy/UeP0JkyWVq9yu///h/w+C2qWohe3YO+l5cKHQODJLdv8t6vf41HDzB8/CTdhw+yNb7I&#xa;Bx+8i4xKJDXIkQNhJr66TbpcIOiLgVlms9ik48w+VKllXxUJRdP2YgaK/k3eK7qGgkE42cHUjc&#xa;/YnmiyWnYYDabo6Vrmxm/+nsmQyubkGj2XBjg8OkRx4mtbq7T1jHCw38P45TtkywUi/k7sWoGd&#xa;msNQbwplr6x56NzfzY3JcX69NI7fSHHi/CH6R5J8+cm7LAQcZBHkyMkeard2vhGc3fJiVtPcuD&#xa;nOVqmAzwgiiTprWwWSJ86hSwBlpm/doWouIipVAp0H6E314jmwzNSdD3n3rgcJg6HjB0FTH4if&#xa;tK4fSXSSiq/y0d/9PYbPR/fQAbyygiKrRBIKV29eQyokqZc8nHyjk3JhhY/f/UcmQjKy5GX/sR&#xa;7k2TzqXlRcQjd0fIEU+7qXufHbb+zYfXHgabH2XQ+nFY1xzAK1zDW8HptaaYPBisy/zg7hkY+w&#xa;6R3CHz9AMNLe6tkSAkc8PKdSqlVK/14I8bffdBxZbK2uUbMdFD1Ad2cCCZPcRpVoRxhJkihlN9&#xa;HCQdLL25h7SuhloL+jpb+OQ/az/4eIrhJ8/W+oK1CYzhAfTqFadabXawQas9xalnjzjdN4JKiX&#xa;8tjByG63tcXW18c/kPjtlSnyNQkhfPSNdOMB6rlVlneqCAGJ7hRLH37CohxldDiFL5hgX0cMgN&#xa;zWMlkrRH+Xh9WpZeqShBB++kfayM8XiA+0oQBWs0TV8RLyajhWk8XFBSxHQtViUJpgKh/lzVcO&#xa;87UMNMtpSlKYuF/DrBepyz6Cuopt1llcXMIWEpo3Qe++GHKjxNxGjr59+1BkqBfTVLUoMeMbqV&#xa;1dnKLalBAixMBIlMJqlXh39Am9Ek+2UXp1imy1ZaPekXbyU3MUJQmPP0ZvV6I17mlnhc1cDV+8&#xa;k+7dIDTUWZlaoiZJ+OJddMd1tmZzJPYnv3kRmCXm59cxkWnb10vM0HFsk6XFeUxbQlaj9A8EWJ&#xa;tapoZMtKsXPT/Fp+N53nj7EgFFatlXGMjlEnI8ig8op7PIidjeZyURw6DK0tQKDUlCiCD9Ix3o&#xa;jsXawiJlq8ad331Bz7mfc+ZsH1KzysLSCo6Q0I0EvT0elqZWaaCQ6B3AXrvF1QWbN392Fq8EjU&#xa;oB0wgRkCVq+U1WtgoIfPSO9OAFNlYWKNVMQp1DtAekbymbYTamlqgiEU71EGws8t5Xa7z+89eJ&#xa;egTLN7/ki1sFDr88glcy6BvsQdtVlVp2hZV0DSEk2np68TYqEI1+03Saz7fKo11naXaJhiQRiH&#xa;aQDNMqm3KDqaUtunqTNIsSsUSD9//Xd1EOH6Ir4ifW3UfbI+URbNLzGUIDyQfsWOfO7z6n++w7&#xa;nD3Xj7Kzyup//l+I/fX/2BqwCxQKeWamp0jEE5jNJum1K+RX/w/8AR+m6EIyjuAL7ccfSKBqOp&#xa;IMkiSj7HqtlWqFQ4ePoqoqQlB5THCeSw/e14KjKQTf+NdPGGlssnD7Mtv6IGdHu55jF1+du7+/&#xa;jt09xJHh1HMelNdk5uYXVKJHOd4fd/u5n7ExvTJ+hflmildODj5xFvIzW7+S4fbVr5hazSJQ0M&#xa;NhXv3ZW3T49e+MIi7e+YoNpY/zh3teUHeyzfrdq9wtRXnj3AiqbLNy+xZL+SBnXjvAi5/Yk+XK&#xa;b8fpuHiGfVHfM9jxClOrmZYdQyFe/dnbdAR0nJ1V1h4VnHyemelJYvEEtmVRrRTY3lggEAgTjK&#xa;SQFXU3X6WvW25IkoKsyAjHoVavvXjBEcIh99V7eCs5ou/8N8ja44WiUSmBN4jnOY/FaNZqYBjo&#xa;zz1TBfViESUQ3ntTuTxDp0G9iqX5MH5wPjuUsmlquwsPqEaIaND7TALSrJQR3sBzL2sPSWujRl&#xa;Mx9uItwmlQtxQM/ccYV+1QyVbxxJ5ldLNDOZum+rUdvSGiIS8IgbU2y9aH/4nor/47ZG/LnyuX&#xa;S8xOT+H1Giiq2uru3ovKPDaZCkmS9v7ValU8Xi+D+4dRFAUheFHr4Uh4e0cw73xK7r/872iGn2&#xa;8rGY0XlAX1F5i9NVdH/oChl88H70OjT74fjR8hncUXlO5nofoD7OhYFrXsDkqqF0n75lev1yAc&#xa;iZLNpJHlb5pKPElwkPbiPqbZRNM0Eok2ZFn+/uNwvnfBaO9F1d6iuTJD3ay7Nc7F5aeMLqN37s&#xa;foP4T0gKgoikJXdw/+QIBiIb87gfO7CYZCxOMJAsHgQ9+/EMFpuVQKelsXeluXm5kuLv9MkSQJ&#xa;TdNoa0uSSLT9ATrwo6z45+Li8sckOg/+/0Nww58uLi4/Gq7guLi4uILj4uLiCo6Li4uLKzguLi&#xa;6u4Li4uLjs8SfTLS6EwGw2aNRrOI6DJMt4vAa67nku3X0v6pkd28LKp3HqrfHNstdADSeQVfUn&#xa;+9zPPd9Mk2a9im3bSJKE7vGie7wPjWD954LjONRqFcxmkyeN1PV4vXi9vj/avFUfzlybZs1GN7&#xa;7ZLU84Jg0TvE9YKKVZy7O6VKZrd9H1n3ImF/NZ8rkMiqwgyfJeZQ5FYkRiiR+cwWa9wMp8kc6D&#xa;3ciNBpLuQXtkwVwhbLKra9T0CJ3JIPJT7imEwCwXqN76GDF3B7leAgSON4DUfxTfidfQQrGHnl&#xa;s4FvWGjder/yQLrBAO+fU1SgTo7ow8Nf1f26BcKpBNbyNJErKsIITAti0CwRDxtvYXns5GNcv6&#xa;So2u4U5EvY7i8T6w5MPXz2mRXlrDjrSRChvf+kxCCKrlEjtb66ia/phgOo5NIefQ2dOHpul/sH&#xa;3LBOh6Bvv+4HplV1gc36TtUB9BTfn+glPNb3L/Xpbhi4cJ7yZgY+o2dzdVXnr5OAH14QQ0q1nm&#xa;JrZI7C66/pBh8xmavjAR/fm+iYVwSC9t4etJ4VfkZzheUCkXKeQyxBIpEskOZEVpzWjf2SKf2U&#xa;b3ePEHgj/ouZr1PLP3V4gOhZn54gpa3zFODCYfzSLSi0tkAtCeDH5re1YIgW1ZlK59gH7/MwKa&#xa;ghpobUJmVUuUxz6iaDaJvPpfoTywlWpudYqrUyXOvXqOqP4TEXu7zsZcnuRQChWHzPISG6Kdjs&#xa;7IU9vzQghq1QrpzXXC8TaSHd2oqoYQgmIuQ2Z7g2I+Szj6YmfuN8oZ5qZytPX7GP/8GsEDpznc&#xa;E3vkKJut+UWavQbJsPHUCaWVchHD56dvaPSxeiEch/np+zQb9T9IcMAms7TEhtRB+3fY93kJzu&#xa;ydWbzD3X+Y4IBJbqv4gKMnEe9O0i5kNKvM+lYRgYSkarQnEw8bMpemKvlJhL2AyfL4XZbMAKMH&#xa;emnvTKDRYGs9g41KrDOJF5PM+g4NJECnrTOOZlfY2CogkAAf7Z1hZGGxs7GNiUSkrQOfVmH2zi&#xa;0oDNLbliLVEUbZ3dKm1lTxe7XH35LFPOFYgmRH914mK4pCItWBEA7lYgFf4OFV9mulHNnibjPG&#xa;46Mj0Vp0S5g11rdzAMRSHRiPiDCKj3g8iScVprC5QdluWVMNxkkGHywCFun1LKFUG/oThLOZ2c&#xa;SevIIPi52mxMTaBkLASFuApAK1ySvUR8/h7+zfOyeYiNO2rhBQ62yuZbGR0EJJPI0s5YaFHk7S&#xa;FlARwia/vkkVCY8vTCLq301zlmyxNe/N44+QiPgQdo2tzSyOrNCWSu15bUI0SK+naSIBCon2JB&#xa;5FQogGO+tpTGTCbW0o9R3Gro/T4ztKZzAMCPLbW6ytG+iKRirZhvKkrROEoFwsEAxH6ezpQ5Ja&#xa;NpIkiXAsgUCQ2dokEIrsTSgUwqacLxGItNZtatbK4PGh2XXWt/MAJFId6IpDYaNEcLfsCFGnUp&#xa;PRpTo72RKtFQ5DJGIPLGupBIgEE0TjfnJra3y9b4IeTpLwP1yHdjYKRNsTqN/yotW+pRkvyXJr&#xa;W+wnSFa9lCNTrAEekp0xVAS57W1qloOiBkgmH98lQgib7NY2dVsQTHQQ8rSOMGsFtrNlWqtCBk&#xa;kmAuA02d5MYyERT3XgUQSFzS0qu6sWasEEyVBLBIVVZnOrQNPM7P3+3GI4xUyFctpkOjfFndks&#xa;0WQQ0zQJdRziRB/gWKwuTLK1sEN83yDRcCcK4FgVNtfTaJqENxTAaKSZn5gkX25gBbs5O2rw+b&#xa;s30DpjhAJJEEXu352kYkqoUp3Mhod3/uuXKc5OsLhVwEEi1lHi6MFOqsUc23MzCBNCySB+BTYm&#xa;Ztio+Dl6ZgD9wWaGEDQbDVKdvY9lsiRJBMNR8pmdhzJLiBqTl79kMm8SDnowLZuO/ac4vT/E3a&#xa;+uMFeso2FihAe4cO4wPu2Bs6Um1VwFM7vK5KfXyIeC+DSwhMLoiTO7pSfP3Zsb7JRkDugBuuOP&#xa;t9kbhQxyYQcRDnN7OceN6XmEgPLgPt4eSCCXMjRy6YcEp1auUStXWJkb58oncwS7Y+iyTcNS0G&#xa;QwQkFGDp8h4a2zvrrIyk6BuuTjxMvnCeXn+GJsESEpWLUSePt4+80hpu7cYydfBlmjvWxzaLAT&#xa;VZbIb8zx8bu38XTFkc0GnngvL505ilTNsTgzRTpfxfImOXM6Rn5rneqYB2f/EDo1drbT3B0rIQ&#xa;mbQPIA54/341EfFl0BNBt12jq698TmoXwLRdleX31ozVyrWmRmbpbY0HH2GTVuXhsj0jNIZfke&#xa;y+Ummmjiix3g7PE441cmGHrnHClDY2d+mtkNCZ+zwb2VEpFYhI7eIUIPCo7coF6uUUgvM/1fvq&#xa;LZFcerCGx0jp9p5auoZhi7Nke2rjNqBEiFvY8LiyQ9lp5H0/boKUKYZLfWmJxdpdZ0SBSPMOTL&#xa;cfnGApLXR6J7kHAy+NAMcByTxckxptdyCAGRZJbDhw9Bdp7Prk/RFDKSVaFmJnnnVydYGb/LRr&#xa;qIkBUSxQajA0Gu/O4jStFwq/w6CodPX6LHqPDl1buUTRPRLLK87XD6+QaNLRoNi4DXw+Cx85w5&#xa;1oNVXODDj9YpdCQobE4Ra/gZPnGKrt0MEgJkJcjBUyc4fbADGXC8MSKJGJInze2ZLUpD+4gkBj&#xa;n/87P4sVm8/il1NcI7b15AMbf48D/eoVrY5P74NMbgAeJak8WJKWJtIYxAO2dfPstg4ptmUMeB&#xa;/YSb2kNi8yDfFmBsff+4SkvCx+HzRzncEyO7eper9zbYiuRYzzhc+PkvSLHJB++NsZjpZbQ99E&#xa;g8p4GEQFFinHv9ZboDOjM3PmN1cZuEqHPlTomzLw3zyquDodkLGAAAIABJREFU3xr7sh0H22zg&#xa;2Ba1RhPLbq1DUm80cSwLp9mAx2bu2tQrTUCjc/AY518dZvXah8zW9/Hay0Os3P6U2Zl14ic6iY&#xa;T8VBWJuVtL5HZ2yC2uEekd5dKRfvIbU9y4UWBneYbbN6YZPHUEQyqxMDNHV3uCRNADyMQ6Rrjw&#xa;zkmM6gbvfTDG3HYfh1JhorEI+ODuxDbFaphY5xCnf/4yMclhLrPM0OGznL8wiFRd4fe/XyA30k&#xa;V78PGdVgUCWX6yqy7JrbV5H7Se6gsQsUzWpzcIdzYooNOlbjGfl7j081+QcNZ4/70JVvM6tULt&#xa;gX3SLJpNCUP2MnT6KKeGU3ubOz64pEWjUscDqFqSs2+9QVIT3P3yIxYXtwnaJT65YXLy2CCXzv&#xa;R9azlsLVDFUwXncQ9HJRgOE0nUEUtzrC9vEU+ZFMuCMy+dY38qiCRJDy3l2ahkmL43Tb19P50+&#xa;h/l7E3iDCTybC3gSPbxz9jC1/BJf/H6Nws4yd29Pkzw0Skitszg1S1t8BEVJcP6NV+jya0xf+5&#xa;jlhXWEvkrR8vGzt8+jW9u8l7v9vfaR+4OaeZoviKdUpeE4NOp1cqU65lNcK8cqc/3Ta8xu5DBt&#xa;B2+9+cimeDb1qkIkNbi7QPduMbAszLqNKkyaTYmunn2EI0/eAlhWfASMxwPbEqDrHmrVyhPPq1&#xa;XL6J6nbytshMLIxQoVU0b1hAh7AE+EoKYim9YzmTmWiCHKVSwEdrFIs9qg+bQ3gddP0xPAqRYZ&#xa;SfjY35lksKONg8kg1Es0dT+q7zviTpKELxrHI1qf/b4gVqnE8uQt7s7MUaubSJKMiUm9ahFPJB&#xa;6q7o2GjST5wDYxLS/tiTY8xhPeUb4YCY+GYla4d+0m06vbmKaN3rR42mIGii+Ap9ak4ThP/F33&#xa;eKhVy4+t/A9Qr1ZbzY8Haq8kaXSNdCKJbZZW1vHF4nhMFd2ItRam98YwVBksB1UzEYIfhqQQj8&#xa;cQlRqW42AXCohqnaeXCOnpMU1JekxvqrlFrl65zWa+hqmoyKZE1+gxjh6MMXP7Mp98NYnzSGJs&#xa;x6RWruORLZpNQfdAP8k2nXpVEE10PxBQFlimjWOpyI5Js6nQ2d6BP6A/9MyxRBxRLlOpqgQTPX&#xa;jk1rNq3zM8+/h68HaDcqnUeiDBU4UEJNp6j9IRCrM2NY0qH6ArarTawB6bfCZNoRjGb5iYpQx9&#xa;x1+hO1CkMD/7iE01Ykmd2dV5Nrs8eK0yJmD4A7R1xAhGu9jfFUGSZAyPjNdokEnnSXo0/AEPEo&#xa;LSzga5upfunthDWw9LsowvEKSQS+M1fHh9/t0MF9SrNQrZDD5/ACHEdwa3/QEvTnOBmaUdUmyS&#xa;sQTtwQeWdJTq5IsNnmoxyeD8pRGCWp2p8XmOHB7A84QYhjfZRWHwJIXx37PPgI7BVnBUt5sUKz&#xa;Xsgy9jtPd+/zqCQ71QRkQOcORIEk+hiYKBP+phbWmZpL+HaqmKjUw0GaCrL0x71yAdMQNQ8O3F&#xa;m2zq1RKFQolycY0dUzAc9JCfzpLsP8FIl6C2eh9FUlDUCul0CSP07IFQSZLwB0IU8zl8/iD+YH&#xa;CvKdJs1MnsbGL4Ao95rnqoi0BzjK9W4K23zhJkDbu+yvxqmlhzhYINvYEE/pDFzNQi3sF2SqUa&#xa;shLkyRkn4ThV8qXmt/3cEk8tzKtvJPA0KkzcX+LoaC/ak+I0krS7G+Xj5U0IAUI85t+YDQtLGB&#xa;w/eQxra5rpJRmhqPQeOIF/YZxbq2UKQASQZIdKsYAj9RBPxZH8SQ4OJFFlCa/PoBn3MLWxyE6b&#xa;gl2qYCHhDwdp74nQluplXzIIyHi16hPlIp7UWZybZHnLR0QrY35P0Vb+9t/92zeAVwCsZpmlmW&#xa;mmZmeZnZ1lbm4H09KIJqL4DA8er594PADCpGmBPxJA1330HR5BrZdoAsFQAFVS8Gomi0sLLK/n&#xa;CUZTBJ08c5PT3J9bxfEE6elrx6N5iLXH0CUZfzRObnWN2cm7TM4usDJX4+jPzjGQCrO6tsydWz&#xa;eZX86h++IEtDKT0wvk6g6xVByvDPmNLQoViCVDDwvO7rgNyzKplIpUy0XqtSqlfJZyMY+q64Sj&#xa;8Ucy36FeaeANhggHvTimiSUptPUPEHJKzC9MsJRp0DUwysHuVo+Fpihsry2yXajg8wWJRAN4PT&#xa;qhRByfrtKo1BGyjmF48AbaODDcxvJKjgYasdDDbX1Jau1qQDBGvlKlur2KU8xgVsoUhEp9/1mi&#xa;F/8Mf1v7QxXOrNexJA3Db6AqBvFUCLNUh93PzVINlABdgxG21la4O3afTA3a+/sZHUywtbjAvT&#xa;tjzK+uUmwEOH7+JGGpxtLiDLfG7rKdrxOMxQl6NeqlNb765CYb6Q3SNYfugREOdKegmWdhdo67&#xa;E/PUhcHAwUGs/CLj95axFA8+j46u+0kkQ8hYNJqCYCKO36M+VjE1TccRDpVygUqpQL1WpVzIUc&#xa;xlURSVaDz55BhJcZ282caR0R58gThSPc/c3ASrJZue4WOMdMVIdXhJr65w79YYWdlD1/79hCWB&#xa;ZgSIRX17HoCuwdbaCtlqg2AwSCgSwKN7iXYk8CoS9VINFB2/z4sv0s5Ib4j1zQKW7CXif3x4gm&#xa;3b1GtVmo0a9WqFarm096+Yz2KaDXz+IIr6jT08AS+V7VUm7oyzsFXAl2jD20hz8/OvWCnZtKe6&#xa;2d8VQ5YUgj6TjXSauhzm6LH95LbXGL99ncnpHSRPiMHhTnYWFrk/NsbM0jLprMKxS6dp90ksLS&#xa;9w8/Yd1rfLGMEAhu4hnIrj03bLr2LQPTxEbXuDuakJJmdXsLQgAwd68T9bL5X50JrG4hl8zFZb&#xa;UfzgYx493qyX2UznQUAps8TmmuDs2xcIaMr3ut/TxkBYZpNatYJt28iyjOHzo3mevC7ug9d72v&#xa;2lRwLUz2qPZ3lmx3GoFguUFieppTdank88RajvAL5w9LEFjr7rHk9LRy2fJlNpgIC1jRUsEeGl&#xa;sweQv+XZc+uT3LxV4fwvTuB7YL2UZ833R499Wr7ZlkW1Wsa2LGRZwmP48HiMJ3gIJjvLS8zv7B&#xa;BIHOBwX/Rb7fJd+fWksvBD81WI1h5P9VqFRr32pMYWXp8fr+H71vL4XeXwUZs+el6znGe7UAEB&#xa;6e1lyhWDCy8fR31K3j1LOXqWoS+PrWn8rONlnuW47zP2RgiHcmaThck5qraErIfoPTmKX5Wf2/&#xa;0kSULTPWi653un8XnYRfoW9/qpkR9Zxh+O4Dt6di/eIO02E5/1es+SDiEscukNphc3MB0JbyDO&#xa;gSP9e2/5J53nDcTpHwqhPyJ63yffnzVfVU0jFI5+91ioWon1tQ3wJRjsCn/nfX7sfP36BeHzB/&#xa;H5v9+4rz/0WR9+IdkUMpvMzizTcCR0X4TBQyN73ffPms4fMq7uheza4OLi4vIkD8edvOni4vKj&#xa;4QqOi4uLKzguLi6u4Li4uLi4guPi4vLTx92X6rkgfvgweReXP0LcjfBegNg4toNpNrAsyzWHi8&#xa;vX4qLqaLr+4+wt/qeC4whq1TKNWvXp04BdXP7EaEg1/IEQHq/hCs7zExyHRr2GtrvOrouLS4tm&#xa;o4bZbODx+vh6ZqwrOM+hSWXbFoYa+JNY1NzF5VlRVA2r2WjNx9mNcbq9VM8FV2hcXJ4FV3BcXF&#xa;xcwXFxcXEFx8XFxcUVHBcXF1dwXFxcXFzBcXFxcQXHxcXFFRwXFxcXV3BcXFxcwflTQkKWJZzd&#xa;zc1cXFxa29U4jgOS/NAGg+5cqh8qN5KEquk0G3Ucx/7WPcxdXP6UcBwH27bxeL08qDiu4PxQF1&#xa;GWCYaiNJsNbMt0vRwXl916oT9hBQVXcJ6DhyMpyhN3S3RxcXlEiFwTuLi4uILj4uLiCo6Li4uL&#xa;KzguLi6u4Li4uLi4guPi4uIKzh8DQjTJrOVw3DE5Li7fLjiNSpbpu4tU/0grimM3qJt2SxTMIv&#xa;du3GQtX3vu96nmNxm7NU3xh4iWXWXq9i0Wd8qPfT95+xZL6bJbel3+2fHQwD+rWWRxao3koR60&#xa;po0AJEVFFja2I5AUFU2REUJgWxaOEEiygqrISJKE41hYlgOw9z0ILNNCAKqmIe9upSKEg21a7B&#xa;6NqqlIgGNb2E5L8BRVRZbANK3dvzVk6eFjZFVF3Z1OIBwb07JBktDUVtJs09y9h8PGxH3Wy36O&#xa;nhnAi4PZaGLbAiEElmUhhEBRNRRZwrEtLPvrtMhoqooQzl5avn4eRZYe+F5C0VRAYNatBzwegW&#xa;NZ2ELA7jHyE+wihI1l2q3rSAKz0USxbaxmc89OiuRgNZpYtvPA9yApGprytW2/vk7rnaJpMo4t&#xa;UFTFLfEuPx3B2a0eZJbv8rsPblHVVHra/djCy85Who6eDo6ff52wWuTuteuMz6SJ93Rz7tWXiD&#xa;XTfPT7r9jaydKUJEKJEd7+5VnW791mbmGBipZg+OBhjvbGASin53n/N19SVAS+UITOfQe4eLKb&#xa;G7/7gImdPIIQB0+cpNu7w9j8MoW6THfnCBfP9HDtvQ+YShdwhId4W5ILb7xOwiu4/eWXzG6tIQ&#xa;Xi9I+c51BbiQ/+0+/ZlmwMXxsJLc/0UpHFjSVOnhlGV72ossDaGOeTsVk2CyadiR4uvXaCqc8+&#xa;4dbSFg4SgViS4VOv0u3M8+F716ioMlo4Rve+EV45sZ/s6jzXr95ko6QS6TnAqycfHnXsODk+/Y&#xa;f3WazVkZUYR0+fIuBsMb+wQFGKMnzwEEf7ooz//mMmt3eoO2GOnR5Fl73IZo6xq1e4N7dJtS5z&#xa;/vWL6LIXqbnDh//3V6w7FrKikozFufD6W4TVBp9++AmbmSw1y0KhnZfeGKK0aTJ8ehifu3eWyz&#xa;8hyt/+u3/7BvAKgFnPs7JQJNbhpVGP8dovX0Eu7rBttvHWO5dQ62nW8hqd7XECHi8d3Ukys8tU&#xa;5QDVlfvsKAle/9lrDHb4yKzWiccbjN9ZoOvgMfpjCtsbO4TiSQxdoVHJsr2t8cqv3mQ44WFych&#xa;4nmqC2nKXv/CVePnuIhK/KresLtB+7xOm+ILMTi9jxOLXFLAMXX+bSqRFq2SWWMhIxVrk/l+X4&#xa;y68zFKgweWcRfypEdqHO+b98hxMH+tDNJmpokFd/dpL2uMrMlVk8HX7uX51GGzzHK8d6WJ5dJK&#xa;tGkNI5EofP8NqFk4SkAkuLRRIxmWIlwut//hoH2n0sTS6gxjvoaI8SDEfp6dBYWdwhnPSTW6vS&#xa;NdqDV5IQToXF8QxHf/4zzh8fJqLkuX17gfaRowy0aWxv7OAL62zNzhMYOcfrFw/TmfSxfHsGrb&#xa;ufkYEB2qMGtjfE4Eg32+PzyKkQxbkKp/7l25w5tJ/yzgqbNR9qboqZPFx642ccHUmyfS9D1/E+&#xa;vI5GNBbY8zBdXP4JML91LpWieTAMg0Q8xnpBwWsYRHwGq0tZMskqV69PY1tNsjs5VLuKlLXoHt&#xa;1PNOCjVPcik6dcyrC5skVTclrBIi1K3TQBreXsKxqGYeA3eunzrdAslRHIeAwvhmFQKJpISpD9&#xa;3VF8+On0LdEsVRC0nscXCDLU28Xl+3l2fOAJ7KMzHkKLDWOMXafeaIKk4jUMDEWgAJrHi+H1IN&#xa;NoWcCsYzYVjg0lCSkOg1GDjZ0sKlLrPMNHqquDial1KoRRVB3DMPAa7cTURWq1MrNXx7i/UcGh&#xa;wc5sk8bZ7idZFK/XwPB6SG/m2FjeoC7ZLbuoEUzbINHRzuzaJJ/l01w8M/x1YwlFMdnIFOju2k&#xa;/Sp7H0gIPqNQx8XpXejgSTG1m2JZNE9yGSET92vdxKszdC+5DmFneXn2KT6tF6onwTWVYUEE22&#xa;Z3PUtWH+4pf7mP3sCnk0jIBMensTsS+8V1F0j4ee3hSjr/0ZPaHH36yO2I1zNEtsVOokdP2hPS&#xa;xVVcK2a+xUoVctslVt0ObRABPLbsVGNrczKIEkAaNItbhK2TxIuLaFJQlk9ZFOOEmh3rAfjpor&#xa;KoousZE1ScSaLGQrKP0+fKUHz5NRLPuJEXdblCltbzF45leMtjf5pH4dBRDCZDdk8xiartPd18&#xa;HIq7+kL/zAAfELDFa2+M2vP2MyFt6Nz9jMj9+nSIpj/W1A7VvzSQgZX9BhcX0e81DygR6BBtmt&#xa;GrFUyC3xLj8lwVHwhw0kNIy9WeUahvHAZ69O24CHleuT/ONv7lPcqdB3boC+kUHWrs/wm9/OYj&#xa;WKlCopznWcoH9fjckr73O73sQbTHHkxCHawz6gydrsGO/+vzkMXcaX6ORgR4TpWd/eQ/ki3Qx0&#xa;rXD7k39kTFgY0R4OpCJ8UVjn8kfvM+XX0RWd4dN9dEQc2pYu8/H7v0UVgkjPMdoDOlsx/27FU2&#xa;jr8HN7fpzfvZfj6KlejLAPwxvnwGCIq1d+x7xk4fXEOT3UznphG+UBuwSiPiRUDN83AqH7DDQp&#xa;QCieZPrqJ8yrdfJllV6PH0XOce3aBBeOD+NTZPzRADKt2eXhjmEG+6rMXH2f8XoTjz/JoWN9FB&#xa;dnmV/LQCBIKBmmsWMgWWW2ViZZru3wXnqTA8cH0QMGKjKBeOABUdExPB66hg+xvD3G+//l/8O2&#xa;qqxtw8D2JoWVBoeSo/jdJpXLPyFSrVL690KIvwUQwqKcaxCIqtSq4PN7EKJBrQY+39efJQxDpZ&#xa;zOUHUEIBNui6E7NtVKgVyxRmZ5kqV6krffOIohSZRz21SaLcGKJSNokkRxe5YvPl5k5NUj+FGI&#xa;JOLoMtQKFbSwH+3r3izbZDudAyAUa8Orlrn8689RR4bpjQcxQhFCht461qywna0gSRKxRAJFci&#xa;ilqwQSgd1eIIdcNoNpyUSSMcxcGW80gIIgl8lg2gJftI2gLtGoVJB8PnRJatklW8cf06lVBP6A&#xa;B4B6uYLs96Fhkt3O0/LXPMSTIUStQLam0hbzIyEoZyr44gGUByp8Jb9NudHS/WgyQj2doeYIFM&#xa;1LPBqkXqqgBg1qOxlqgl1bxxGlCmrIoLZTwd8WRJGkVt40ZLy6jFkvspMpU8ktc21W8Gd/dgqt&#xa;DoGw4ZZ4l38yhKDykOD84RcyWbh7gxu3JylZEAhF6T12iXP74996TnF7hdn5MsPnDhD4Hm9dIc&#xa;pMXJkmuH+InkTQzcWHbGOzMXWbazfGyTRBMaLEh07xy5NdbrDY5Y9HcABsq4m5OwYHScaja0hP&#xa;KeStsSsOqqY89bjHzxPYpoWsqW4legKObdE0rQfiaLprJ5efjOA8txX/FFVH+R5XkyQZTf/+My&#xa;skSULV3R6Xb0NWVLyKu5Cjy0+0fLomcHFxcQXHxcXFFRwXFxcXV3BcXFxcwXFxcXFxBcfFxeVH&#xa;50+i/1QIQSWbg2gUvwRgs7MwQ7oOkdQ+OmI+wGRldo6ypdDd30/Qo36v8UEuLi6u4CCEYH36Bp&#xa;++P0nvL97mwkAbuZUJxqYWcFCY2ypx5uwJmku3ubuYQRUN1nM1zp8+QkB3BcfFxW1SfQ+xqWUW&#xa;mF1bx3IUWtuqm2zMraJ1neLNN18hVMmyndlkbXqF7qMXeeuNs1TXNsnVGm7pcHFxPZxnR5IkvN&#xa;FOjp6NEaxd3/3WplGR8XbqSKqKYYNt1amVVRIeBTxePHUL03bc0uHi4grO93ThFC8R/6NKZOHY&#xa;JsK2MYXTWoZCsrFsGywTW7hi4+LiCs5zQSeW8rHUqFAtSzQDBkl/Aq3LoFqpUlWKSMkwAXe+1g&#xa;tr5v7YXu7/396ZdceRXHf+l3vtOwpV2EGAIAFwJ1u9WpZsy7KPz7zMx5mZb+PXeRsfj2TJliV3&#xa;a3phEyS4giD2HVVA7VtuMQ8FgigU2N1iEw0u+TsHJJBARWVGxf3njZsR93p98ub0yXsjOMFkAi&#xa;QJCZnec+eY/WKWf56pMTJxkZF0jEolzh9v/wdf1X0MTt8kGfQE5zQMy7EtatUypmkCp2dosqwS&#xa;CkfQDd8bLTpCCCyzRa1axratU30vRdUIh6Oomn5mffLa0lO86biOA7J8kIirPfBd0d5drR6Uvr&#xa;Etq122RdWQZe8J1evGtm12NlaxzBa6z3+qg962LVRFpSfbj6q+uTcPyzTZ2VzDdZ1TFYLn41vX&#xa;ddJ9g8jyT/+86LWmp3jTkRWlw6VUNb3LzdR03VOF0zQuy6TVajA8dpFAKMyJCZ9fE45js770jH&#xa;qtRiQae2P7pNmsY9s2o+cn0X2+U+yTtuCsLc1jtpr4/AFvSuXxrk+pXFzXxfAFkOXTLconyzq6&#xa;biBc583uE9dt3+wM36n3iW4oyIryk8eMOj4Xzww8frhgmFTLjS5XvbpXwfqhg/inHOs/4azYbN&#xa;RpvQUlss86UPDOL/xzXQfLNDFbrR/8ZVsm4h1+NO46DpvPVqgfrDVqex7iUFTWl9d49ughy/la&#xa;x92wuLXK7J1n1NwXZZChzNydWbaK9Ved/GCa9hmMDZvN+RX26+aRfqmzeHeR2gklgYTTYuHhI7&#xa;bLrRPaarF45z5PF3O4R/pLCAer9Zdfm3Df3XVg6rssNrZlsbO5RqvVwrHtH3Z7lSQ0TScSixFP&#xa;ppEk6Z3bUyUcm93VxzRTvYxGdfJby1TsCKODSUSrxLOlBSTLJqQkGEoGjtwVbRq1BhsPHlFthb&#xa;h0axQNaJTrOK9o9A9++x/sGn18/MtL/LRRBZP1JwtEwzESgXbszrErPL0zj//CAMHjddidBsW9&#xa;HFYsSyZidLVmt5ocf8ZU2l5jYaXJ5IcXfnCJZSGqfP7Pv4Wxy3z42QS6JzhvyV3cdcntbCAEjI&#xa;xfxPD5kI6YjhACgcB1nI6nGK5wqZSK7G6tIyERT6Xfub6RFQk54LK+XWYkFGV19muWtSn6+pNY&#xa;+5s0JZfBVB+BsB+ae3w784TNnTyNRpGmMkq/U+bO7RnW85tcuT5EeW+dpd//hhlVoSedZer6De&#xa;yNFUpOkHMXMqgnGZvb5MGf/o2vbs+infvbN66PKrklHj9dIleTGB0bZ/JcimgkRTBgIKobfH1v&#xa;nu3dIo5Q6Ds/idLa4/5X/8nyrE6kp4/RqRskKTP7569Y3Frj4qWLhKwGcryXoUzk5JuYXeHun/&#xa;/AvUePGMxe9Dyct4lWo06r2WJ4bALD112PqVIq0GjU0XWDeLLnhTFKMtF4Atu2KOR2iSV73r1d&#xa;47JCwh9le2eb+pBGraUTibrU6k3K2yUUKU5zL4cZS9D49iEFNc2tn09SWZtjbl0GdAaGp7j2s/&#xa;MkErCe7KXv2mUGYzqri0959HiVCykV1VFfGjOwTItQ33lu/rc+thfOZvpgNvPc/X+fsxbxH3o4&#xa;qyWHqXqeb799htY7xGTaZbeQZ7caJr+yjZNOsvL5l5SSF/jws2ny8w/I7deIGjHGzvczdS5BYX&#xa;2Oua9nuH4pTGZ4gks/v0wyHKC4soHQXh7FaNZNgslhbv19mIqQ3h/BEUIcfL2980jTMnEcG0VV&#xa;cV33RA+ovR7HObzeDpuUlcM2hHibQ10Ssix3iKYkKcR6YzR2ttnbcGj4RxkPC7YLJcqlXfz9Y+&#xa;irZWzqlAsNBm6Nkk2G8LUSrG2UAYdAOEoiEUWjDGhEEwmS8SBydZc7c1XCN66Q/g6h1nxhRicu&#xa;kl+6yzZnM850X4jengGGM5GDaVGe8nqeZm2PhXsPUPt2WJQkHBEgkojjAo5dpVqCy397gV6/jL&#xa;sXYm8HQCGciJNMpIgYLZ48WqDmBtGNIMlEnIAkETg/9p3n44skmZiOslD6Lyp13g/BEULgODaF&#xa;vTyNWvWtFR3XcagUC6wsPGVg+Byqqh4LzLkd3z+/TiHa3s/aygJmo8HmyiK8pR6OBBj+AIlUGk&#xa;3vjDsEU/1ElVUePdgkPn6dZLTK7PJTis0AN/ui7K8CaOg+jWKxANnQkVcrL2qQdY0oFclp4DhN&#xa;6q5GQH+TnWgf2ZFhRjPRttfV8rPwxR6yYjA0Oc3gJ79kPCYdOIVNvr6/gCSp6D6d/XKLrP8llU&#xa;xlGd20ECgIXgSlW7UaBAIY73GeJfVkd7cFrksoHEZ6i1fchiIRCns5Vhae0j98Dv3IYr8XQira&#xa;3o7rIoBqpcTW+gp+v5/ebN/bPZ0SYFkWlml1CQ5KlAG/y+93bS4MJAn7fcj3vqHgXKTHr1DUVB&#xa;R89I728s3cA/517SlOtYCtDzOd0ng8f5c//KHKlVuDaD79yONOGVWH9dnHVJ0YV2+NHpZtPhkF&#xa;TT+bx8mqrh17TCthBHRCsSwjQ3usz/yeNUlHUcJMXB9FMTR0PcrweJL7t79g06dQ2dnGyE4TVY&#xa;9OHyX0gI4/YGCbG/zbb75g+soY9toG9A5zYST13cUJJRVVfo+mVKqmE4rFDzpFvM32RjAUYWdr&#xa;k/WVBQYGR5EOlnQ7Rx592raF6zjUqhV2ttbxB4L0ZLLvRMVKgXTi0n5Jkhi7+Vf4zpkMxA3A4P&#xa;pnf8+YHENXNM7duIwIhQlIPfwy1Ueu2F5/4w8nSScCfPRpkpalEAv34L+hEYi1nzHF+oa54ncI&#xa;h6Hh6t8jNhKp0fPcjLj81OteJSnA+RuX0VORIwKU5PJHl4kFQmSufUx/fpndqgQoJKIpIjcuY/&#xa;TE0NMfE85sUW42Wd7bAl+IsctjKKEwsiSh+3u48jOdeDJB9K997FVaxBJJjHAQwuHvGVcqI7eu&#xa;0+MY6O+L4CiKiqb7UFWFs18q9ONNzhcMszz/hNXlBXoyGRRFxbRaKIqGEAKz1aRU3Ke4t0c0ka&#xa;R/aPRM9pqcxrW7jov7ktW2khFhIHNkmhXr4XkmD384cuR4muCx3QHZ/sHD7/3ZxBFD9hE7+DH0&#xa;snleB37iybPpnXBP7JgIKaRGUoc/B1IjHPkR0nFss8bj+3d5urqLg4wRjjN9oY9wOHikHZXUcP&#xa;uiwskM4efX5/9hEqJoISLaaY2IN0xwDtedHNT+fheQJYm+wWHWlhdZX14klc5g2zaKXwMB5eI+&#xa;+Z1tEqk0vdk+XMfmDV8R/3bGlCQJWZKxLBNV0051uuo4Tvt91OBrbVfRAoyOT5EZnTqwID/xsP&#xa;HqfSK3ZxGObXcF91+r0BzEZt2DrRRvlIcywNT3AAAXb0lEQVTzLmL4/AyfO8/q0jzbG2tEY3Fk&#xa;WcZxHIqFPSKxOL19A6e+n+V9RtN0dMNgc3WRUCR2ql5ks1EHIQgEQ69dNP3ROP7XNS4NP6qqsr&#xa;GyQCAUPlXBadSqyJLUHc/zBOd07q6arjM4MsbiszkK+3l0XafZMunpzTIw9CK+43E6KIpKdmCU&#xa;aqWE2Wq0HwmellerqERjaVTtzc5rpOkG6b5BquUSrUbtVN9L1w3C0RiKcnY31fdqt7gkSRiGj9&#xa;GxCZafPaW0n6d/ZIy+gaH23dYrC3Pq/a+oCtF4wuuMozdCTe9YfPouo76HnzA+v59zE5PUa1Ui&#xa;0VhHrhwPD4/T45XnEFtb213H8vm9rmP1eveSyY3Nza5j+/v73XPORuN728rvdb+n47i0Wp27eq&#xa;vV6lHVQdN1TMftEpudnZ2u9srlctexnZ3drmO7u7muY53vS3sjqdMZkS4Wiyf2ca3W6WI3m82u&#xa;FdH7hYI3ij3ebcGxbZtvbn/TYRB7e3vMzMx0/N3i4hJ37sx0GdyXX35Fs9l8Yai5HHdm7nb83f&#xa;z8M2aOHbszM8Pi4lLnsTsz7B0TnUePH3W1d2fmLssrKx2u7MzMXQpHjL1SqfDtnTsdWyHW19e7&#xa;2hJCcGdmpkOIisUSd45d/8rKatf1z8zc5cGDh13ntrW11XFsaWnphGuYYW7uaWd7d2bY2d31Rr&#xa;LHu+3hlErdd/1qrTvoZVrWCa8tdd/N692vtY691jSt7/UCnguCbdtdQnecSrVygjfTfeyoOB7+&#xa;XaX8vd7MSe9r2zbuse0ijcbJG2faicaP9ofd5eHU6nVvFHu8fzGcaDTKlcuXO4719/cRDHauId&#xa;U0jQ9u3UI/kj84Hotx5VLnawcHB4nHOxdmTU9NEot1Hrty+RLRaLTj2LnR0S5DvzQ9RSLx3cHK&#xa;QCDAtatXOx5NptNpLp2w+PHqlSsEgy/WeIRCQa5c6byGTKYX7dhTksnJSfRjJWguXbpEMpnqON&#xa;bX14f/WN7ZqcnJjvf08HjbeKWqDbZt83/+5V/4+1/96q02gH/9v7/h448/Ih6LvbXX8Lvf/Z4r&#xa;V6/Qm057o9njjeaVqzaoqsoHtz546++2N65ff6vFBuD69eukUklvNHu8FbxyDGdgoP+tv/hMpv&#xa;etvwZPbDzeC8Hx8PDw8ATHw8PDExwPDw8PT3A8PDw8wfHw8PAEx8PDw8MTHA8PjzefNz49hXhJ&#xa;kibpPchdc9K1S17OHg9PcE7P4Fzbwirs4jbbmxQVfwg11oOsqu+08bmuS7NRx2w1EQhURcPnD5&#xa;x6LmAPj59McMxGg8axHcqgEY74f/KSKUIIrGKe2swfYOk+SqsOErSMAIxeJXjjl2iRRIfxCWHT&#xa;qFsEgv4jhmthuzK6qnzP+1lsL6wjp9Kko4ETjVoIm2q5dqxOpIQvFMJQXt/s1LYs8rtbNJsNVE&#xa;1DluSD3e+CZE8vgWD42HW7NMoV9HDksJ6REDathoMvYHzPdbtUcpvs1Q0Gh1Mn1wEHhGtSqTQO&#xa;sv5LBEMh1B9xzcK1qVVb4FbZzbsMjmW+p6SMxzsnOJuLi9x//JiqWSK/B+lsnGR2hGvXp0kFjN&#xa;cgIi6VfA4rFCfhe/mdWgiBbZmUv/4tvqdfEjR0lHAYEDj1CtUHf6Ti2ET/+r+jqC/aKW0/5Q//&#xa;/oSJX/8TUykdcNh48IidZpgrH4yif+eAdthZXEHRIqSjJ1dJKu9scG/mPju1KptzO8TH+/ArMS&#xa;5evcLkePqlxnr4DnaNraUKmfHel/6t67rs5bZBkhgcPX8oLrZlkdveILe9xcCwvyNXr93K8cVv&#xa;/ogx/RmfTmdRJIlKboMnT6tMfzpF8DvPS1DJbbKaj9A/nHrJ52Gz8fBr/vTVEmosgBSIYfh8fP&#xa;TBh6TD6omfX7OyR8Xx0xM7WbyruSX+684WI+MJthdtsmMZNM8e3y/BGZmeZnhqir2V+9yfh4//&#xa;7jI+SUIIi9zqGg0JQrEe4iGN4uYWFVeAUEj2ZwhgsrWRw5YAodM7mMaQJIr5bcoNi2Cyn4TfZv&#xa;3hQ5btMJMTw/QNJqmulYgOxrsMsLW7gTv3DX5FYrPu8HhlDVmCyZ4wadWlMfcNramPCWSHjrxK&#xa;plmusL81x3bgApmAgus2qLfaHo9dy7O530Dzhcj2xA/v3NvrO1g0yRVrPC/TVC3k2K828cd66Q&#xa;m3U2lEM8P8/B+HEe4+f/rf3zL6688YirbbFk6LrY1dLAl6MgNookHZ0kkE211sVXLslgrM3n5G&#xa;0bhEXzxNIuzr+kCsVotms8HgyPmOLP6arpPpH6LZqFOrlokeK+bUKpQxdxd44tOYGksBJuX9dq&#xa;4gYVZY22knGsv0DaArEkIIirltKs0WW+t7OL52HSrXLLO5XULxB8n2JI4IocrAhZ/x0WcTaI7F&#xa;t198wfzcIuGb5/FLErVijr1KE380TSqssDX3hAdrLtO3Jugf7MWgxc5aDhOJeCZDIJ4k5a8T0+&#xa;B57khhV9ncLOAgk8hmCGle6tf3MoZjNatsri+zXajSlMLc/GSUh7/7I7WeBGEjxnkF8ksPWS/Y&#xa;+A1BbrXBzX/6JdHyKg/X9hGuQyCe48LkBK7TILdTxG+o+IIWq483GE1fI+3rLBLWKuVRqvs4sQ&#xa;R31nLMLq4iIWGeH+HvRuJIpTytSuGY4EikBydI2HXmHjwieO3S4W8auWW+vD1HU3FRWg694z/j&#xa;5vkQD7/9lpX9OprssLadJ4ogt/yE+8vbOJaNL7KFffEy2djLC4MIq8rD2Qds5CtIskSu0mI4ob&#xa;KytkVl5BJ9epVvHy+h+VUKuR2sJwHkcYNIyOgSWtuxkWUFfyDY5RlIskw0nqRa7k5JquoDDPXH&#xa;2c6tEM/ED4vQCbPMN3/+mo2GjWY3ebZW4+MPxsg/vs29tRKqJlHY3MI3Mkxjf4PZJ0s0ak1U3a&#xa;A8Ns3EQHcOIUnVufnJDb69u0ix0KJWXube0tZhf41fuAi02M/vsrjoJxiNEJUqrC0tsF+qYBpp&#xa;blzvpVFr0pCDB15Rg/v/9TlLVfD7woxrIQKZyDtR/dTjLxQcRfMRDBqEsNl6uEW5nEFRevjwF3&#xa;9NX0CnuD7Lo334+Ff/QNrX4Jt/+RJhV1h6MEte72MoGWDr6SMkI0ZUCTN56yY3J3qRcfFdChAx&#xa;up1p13ERpolr25iWjesKQNCy7HahOstEck4o1CdrjFy7gbbwmNVnqweVJC3WF9aQov380yeXKK&#xa;7c5asHK2zFw2zsWNz89a/JGC1m+DMqDdae3GejFmKsL05udYk5rYfeGyMnDn4hBKXcOrN3HpO4&#xa;cIGQarLweJ6eX/yc4USBp7N/5utqiOzYOab7muz1T/Dhrz4h+h2GJEnSSytItKtLnPy6+NAECe&#xa;UBG1/doW8qBrjsb82Tq6j84h/+jqi1xu9/95S1fICtp3uMfPZLpnt9bM5+xdOiy+b8Q2bv73H5&#xa;8ghWbY/Hc2sMZeP4TnI0VANDlaBVYvXJfTYqAcb6E+TXl5lT4wzi59z0LT7+ZBwVcCyXYMiPqb&#xa;R49HSHymSMVt1EHNb6tBFOCxEc4uNPLxHSVS84/g7yvVE/IWye3bvL0mYOXdMIKMqxoKnAthR0&#xa;X4qorzMIW682iYSD6JrB8MQUg9lIh61IkkK8P45ywsBSAhFaRhDRKDOVDnO+v5cLAxkmUwGcWh&#xa;nTF0YNhF5qsGP9CfZ3N3i41QQcWg2JSDKLAoSiccyGSdOSUbUgUeOIMWPRqDWJhCPomkb/6HkG&#xa;e6PfE5txkWU/Ib+OroU4NzJCNOojeW6EWj5Pq1bh0sX0DyqarCgqEu3ywyeJW71aQf+OQmbpkY&#xa;s0HIl7izuAwDJV9ECKgAZSIIEmSQjLxGraJKIHXqWqIuPQqDuEIyl8uk4k3sdIbwJFfslZm2Vq&#xa;LQF+hUa9Sfigv/qGxxnsjR671hb3v7nHSr6CZuiE6C45K0lhpm7dIib2+PNXX/I41/Ss8/30cB&#xa;ysWgVfapzx8xHqa/Vjg0kiHPMjrE0Wlnfoi7vUTZuwEiLVl6HoCzE4OohPBd1vYPkc1nZ3KPSE&#xa;iIQFK7PbZK6cI3xsvu7PDFIeu0n54X8y7Bf0n2u79qrVoNy0cK/8Fb6evpcbbiDLxfEdvvj3uz&#xa;QCvQylfTzZWmCjx6XybAEjliQdCbBoz/HwyRrjGZ1awyRMkEQ2Q0sK0z8yTEADzQh8p2sfioXp&#xa;7YsQifQw1BsFFHyiyf3bDwmPXmMoAs/uPaY340OSK+zsFNHiIQIneHa6rqPpBvntTXqyA+iGcR&#xa;BDcagUCpitJsl05uV3EDXAzz7q5fM/fs5WdZBrcT9ifplnqynCtWWqSIQjSQIRlwezz1DPpymW&#xa;6riESA0k6ZFcUv2jJAIKSDrqkctuVCsUSyW0VpmlxQVcbYhUNEopm6EpwvSNjBDUQDUMivuCan&#xa;6Hvf1ekgkZp14kNXiZ8axLcWHuyBiSsFoVihWTmBzi6tVJvvmPb8gHd7F7hr43EO/xdqH8r//5&#xa;P/4G+HlnzMYExUciHUWVVHTVZn1tlUdPFqi7Gv3n+gn7fETTCQKaiupPoIsGqytPefR4gZWlff&#xa;qvXebq9Bj1/W3mH93jyfwOrhahv8/P+toqG7tlAiEfjWKdYG8Svyp3eCiKqiGFk5TqLeq7m9jl&#xa;PVr1OiXFj3nxU+If/yPBZLrD7bZaJq5ikEjHUCWJQChKvWqjp3q4cH6I/NoaT548paVFmbr1Ae&#xa;lYlIjPZm11iUePF6hYCv1jo1ycGMUsbLIwN8ujp1vYip9kT/TI4LexbIik4gQNDdWIEg9rbGys&#xa;ce/+Q7ZyFcxKAUyb8as36O9Nsp8v4aoGmDmePFnH1QIkUpEug5JkGcPnp9GoUi0VaNSr1KoVSv&#xa;s5Ws0GoUgE37Fcx8K1sV2ZeDaJX1VQjCiqkFAjUQbHJlAaZZaWnrLb0hidvsFYb4z+viC5jVUe&#xa;P5xjp2wSHxjmwsUJfLUt1pcec//JClVHIdGbxJAlWrU9VpYWWVxZYWnfwhfv4/rlMXyKQjKbxS&#xa;pssnjQX5YSZHg4Rm57naW1Av5wD3HDZHVhicfPVrGUIAOjWQI+P33DSUq5bSp2g0p+nZm78xjZ&#xa;Pi5cvUhU8xbCv2NYr5TTuNvVt9jZ2KLlgF3ZZmm9xthHHzEa+3EVmF3XpVEpU16dp1lo13zyJ9&#xa;OEB8/jD4VPtTb1WSOAVrPRXvjnChRVwR8InWmZVg+PH6cTr5jT+HhcoVUtsbGyyH7dBsVHdmKK&#xa;4ajvxweYZJlAJIp/+uaLOtSShHTw9S4jAT6fH5/P741Uj/cphvM9hiFJ+MIpbn76i9MxvPdAXD&#xa;w83he8SbKHh4cnOB4eHp7geHh4eHiC4+Hh4QmOh4eHxyGq1wUeHmfHyzJa/iV8V5qXs+b4uXmC&#xa;4+FxhmJjmi2azeYriYMsyfj8frQTskC6wqXZaGB2JdT7iaZOkow/EEA9lpnTExwPjzMSm3KpxN&#xa;5eHgEo8gkryI9qiOj+neM4yJJMOp0mEHyRzsR1Xfb2cpTLZWRJ6faApJe0+Re7Ly9vx3FsFEWl&#xa;N9OLz+c/PAdPcDw8zgDbtsnldtF0nXA48vLFrdLLhUEIQaVcZm8vjz/QzqwohKDZbFAslggEAg&#xa;T8gZemOvkpBHV/b49sX78nOB4eZ4nrOFiWRSKZwnUcxKHDIBBHXZsDwZGOio/U3ukjAYFgkMJe&#xa;vmNKZpomEuD3+XEcp8MNER379H+EoByqoPTycwsEqJRLHa/zBMfD4yymVLSnREK0p0BH5UAcma&#xa;Y891ra37/YUvj8gCzLOO6xDFWi/eUKgfv8d0IckR0JSTombK/gwXBEcoQkOjyxtkcjdZ2bJzge&#xa;HmckOUIIhHDbgnPgFgjHwXHblquoyoH/4OK6IMsS4iBGIysK8oGNt41fHGu73W5bzNoK9FzgJE&#xa;l6DVkHxIv91Af/mM0ixYpCKh1BEYAkd52bJzgeHmfk4gghEO4LwXEaO9y/v8TO1i5aKk02O8Tk&#xa;uSzl3U02czYjU4OQX2Qu55LK9DOQCiKJA6MWnS5Oh5ghqOeeMre0zdpmmUjfAFOXL5P2/YgyP+&#xa;L4rM+luLPO4qZONBVEkmQk3AN3y/NwPDzO2r85FAXhOjhWldm787ixfj6evoTT2OfJ/Xnuo9Hv&#xa;q7GfN0nnl9ndLRNJjpKJ+XAdF4m2WIlj0zUhXITj4roOtf0N7s2XyI5McX5Kp16uoTYaOJpGrV&#xa;TFBnRfEL+h0CxXaB2oiWKECB8ktBZui3KliUAiEAmjAbbZoNqwUA0/Ib+K67i4wsVxXFy5/Wjc&#xa;PXZunuB4eJyVh+O6uK7AcV1KWysUG3DlSgafJoPWy8hAnkc72/QMqNQLm8xuD5OOj9KfDOK6Ds&#xa;gyknARwu2Kr7iuOIjhOOQ315H8KQaSYQCMZDttbbNaZGn+GduFJpIvwtWbA8z98TZlQ0dTQJFV&#xa;Llz9GemgzYPbjyiYdQRBRi+cp9df5+7jNVr1Or5whOELU2iuOJjGOe2851L34kNPcDw8ztDLeW&#xa;6gzZaDFgyjSW2RQIAvFMRarmA6Jvu7u+jhDB+MGbiOgyxJuAJkSXQvGhTPRcfFcSyadRt/KoDr&#xa;OB2P2RU9SCaTIZxq8eTBOsW9KJIIc+XDa6T9Cov3b7O6uo1t5Cg04eYnn+JXABxWHzyk0FCZHh&#xa;+jlNtgazNHv99ti6jjIpAQ8rG5lyc4Hh5nOKVyBa5oT4kUBZrVMi3LQVXbT6Zq5QoYMpKrkchm&#xa;8fsKPJ1bYHhslIAmI0kSrusg3M7A7HMhE8JFCNAMiWKtjuvGeB6sBpetxTmWtvcxfBr1Sp2G4+&#xa;AIB8dxcByZaCxKfqtMqSXwJTOoOLSfsjcp5IqYTpD1jQ1AIhQU2EIcPhlzny9CPCY43uZND48z&#xa;mlK5wj2cVoVSGcKqycLyFo1Wi3p1h4WlfeKxGLJwUf1RJi5dRFNtVle2sFz3SMDZ7Q4aP/+dC5&#xa;FUGrucZ7NQodVqUirsUapWqRaKGMlxLl+aZKAncjA9EwjXaU+LhMB1IRRWqe5vUW40MU0Tx5WJ&#xa;pOLEohEuTE5z5dIUY4MJZMfBMpuYlnPk6Zvb4eV4Ho6Hx1lpzoE3IFwXIQeYmBjgwaNVPn9yFy&#xa;kaIZEY4OJQnEq+STAkg9AZTId5/KzI9l6YgZ7IQeCZk4PGB6Ljj2YYz5SZn7/Lnd0qoXQvExcn&#xa;iffEWF+c47cLNVxLZ3I0Q6QnjOwKXEfguhpBn0Q020dg6xG3P/8TLSfA+IUJRs6NU3/0gNkv/5&#xa;39ukZ29BwXBkO4yys8W9pgemIITXK7Vkm/lqoNHh4efxm1Wo2H92fpSaexLYv9/QJCuDiOjWW3&#xa;YziqrqNIEAz6AQX1oJSS67gomoaiKiiyQqlY5PLVa2iahhCCfC7H+toq0VgM27IoFIoI4WC2LF&#xa;whkCQZTVeIRcJYpnVQ2FJG01Vcy0HR1PZuCOHiuKAoMggH07QRSKi61p4aCRfTaq9klmUFTVNw&#xa;bBtJ0TAMHUmSqNWqTF+6gqqqr6dqg4eHxyu5NwcxFkHLNFlbX6dQLLYDvs/9FNHeK3BudIRs9k&#xa;XxQ0V9LgicOG3hMIYjKJZKzM3P02y2Xvg/AmKxKP7xMQyjs4qrrB+RBEnmcH2gpKAbytHTbx/T&#xa;lY6tWqqmI8ntJdGu2+3heILj4XEGSLKEqqnYloWh61y+NH34tEkgTtwd3v7v+d6l9v+2Zbarsx&#xa;6x+na9tnYcJxaL8eEHt17e9itu7JSOr/x7fm7SizZN00TT9U5B8z56D4+fHl3TiUZjVCtlTNM8&#xa;iMUcedr0Eh0QCFxAuIJmq0mj0SART7SnPQcEgyH8gQDVagXbtl+0fVLOHfGKXy87N9Ge8jWbDS&#xa;yrRSKR6ChY6Xk4Hh5ngKKqDAwOs6sblIoFTLP1F7eh6Tq9mT7Svb1IknzgsEjohsHA4DC5nW0q&#xa;1Qri2AbKn0RQDYNsupdUT9pLwOXhceZTKknCMAwGBgbp6x945XZkWe4qFinLMuFwmGAweKZpRk&#xa;86N09wPDzOUHQkRTmVuMbr2RH++lGFEKYQ1LyP38PD43QR9f8PGIzaCIBpxJUAAAAASUVORK5C&#xa;YII=" ID="ID_1451089329" CREATED="1750948476505" MODIFIED="1750948476515"/>
</node>
</node>
<node TEXT="lib" POSITION="bottom_or_right" ID="ID_894274149" CREATED="1403110985593" MODIFIED="1403110985609"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing binary files (normally .jar files) to be added to the add-on's classpath.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The child nodes of these nodes contain the actual files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Any lib file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/lib.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</map>
