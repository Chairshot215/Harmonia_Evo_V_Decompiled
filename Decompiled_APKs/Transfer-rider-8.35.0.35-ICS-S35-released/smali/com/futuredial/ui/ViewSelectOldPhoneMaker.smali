.class public Lcom/futuredial/ui/ViewSelectOldPhoneMaker;
.super Lcom/futuredial/ui/ListViewCtrl;
.source "ViewSelectOldPhoneMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;
    }
.end annotation


# instance fields
.field m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

.field m_makerTypeDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

.field m_phoneMakers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/futuredial/ui/ListViewCtrl;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 31
    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakers:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_makerTypeDict:Ljava/util/HashMap;

    .line 33
    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    .line 38
    const-string v0, "[select your old phone]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->ViewName:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method on_back_key()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-boolean v0, v0, Lcom/futuredial/ui/DMIUI;->m_bFromOOBE:Z

    if-ne v2, v0, :cond_2

    .line 64
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 69
    :goto_0
    const-string v0, "makerExtType"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phoneMakers"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "phoneMakers"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakers:Ljava/util/ArrayList;

    .line 72
    const-string v0, "makerExtType"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_makerTypeDict:Ljava/util/HashMap;

    .line 75
    :cond_0
    new-instance v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    invoke-direct {v0, p0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;-><init>(Lcom/futuredial/ui/ViewSelectOldPhoneMaker;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    .line 76
    const-string v0, "phoneMakerSelector"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    const-string v0, "phoneMakerSelector"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    iget v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->m_pos:I

    iput v0, v1, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->m_pos:I

    .line 81
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 66
    :cond_2
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewImportData"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    goto :goto_0
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 20

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->ViewName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "set_view()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/futuredial/ui/DMIStyle;->format_listview(Lcom/htc/widget/HtcListView;)V

    .line 105
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->set_step(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->headerText:Lcom/htc/widget/HeaderBarText;

    move-object/from16 v17, v0

    const v18, 0x7f06025e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->get_resource_string(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->ViewName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "first time load phone tips xml.(Maker)"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakers:Ljava/util/ArrayList;

    .line 115
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_makerTypeDict:Ljava/util/HashMap;

    .line 118
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 119
    .local v4, am:Landroid/content/res/AssetManager;
    const-string v17, "PhoneTips.xml"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 120
    .local v15, phoneTipsXml:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 121
    .local v6, builderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 122
    .local v5, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 123
    .local v7, doc:Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v16

    .line 124
    .local v16, xpath:Ljavax/xml/xpath/XPath;
    const-string v17, "PhoneTips/Manufacturer"

    sget-object v18, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v7, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/NodeList;

    .line 125
    .local v14, nodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 126
    .local v12, nlSize:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v12, :cond_3

    .line 128
    invoke-interface {v14, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 129
    .local v13, node:Lorg/w3c/dom/Node;
    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .line 131
    .local v8, e:Lorg/w3c/dom/Element;
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, makerName:Ljava/lang/String;
    const-string v17, "exttype"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, makerExtType:Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_1

    .line 134
    :cond_0
    const-string v10, "general"

    .line 136
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->ViewName:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "maker:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v17, "Others"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_makerTypeDict:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 144
    .end local v8           #e:Lorg/w3c/dom/Element;
    .end local v10           #makerExtType:Ljava/lang/String;
    .end local v11           #makerName:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    :cond_3
    const-string v17, "makerExtType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_makerTypeDict:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const v18, 0x7f0601f2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->get_resource_string(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v17, "phoneMakers"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v17, "phonetipxml"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    new-instance v3, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    move-object/from16 v17, v0

    sget-object v18, Lcom/futuredial/ui/DMIUI;->LV_LAYOUT_ID:Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 166
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->m_pos:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->m_pos:I

    move/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/htc/widget/HtcListView;->setItemChecked(IZ)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_selectView:Lcom/htc/widget/HtcListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->m_pos:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 179
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v17, v0

    new-instance v18, Lcom/futuredial/ui/CBtnListener;

    const-string v19, "com.futuredial.ui.ViewSelectOldPhoneModel"

    invoke-direct/range {v18 .. v19}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const-string v17, "phoneMakerSelector"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_phoneMakerSelector:Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->put_mem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4           #am:Landroid/content/res/AssetManager;
    .end local v5           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #builderfactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #doc:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v12           #nlSize:I
    .end local v14           #nodeList:Lorg/w3c/dom/NodeList;
    .end local v15           #phoneTipsXml:Ljava/io/InputStream;
    .end local v16           #xpath:Ljavax/xml/xpath/XPath;
    :goto_1
    return-object v17

    .line 152
    :catch_0
    move-exception v8

    .line 153
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto :goto_1
.end method
