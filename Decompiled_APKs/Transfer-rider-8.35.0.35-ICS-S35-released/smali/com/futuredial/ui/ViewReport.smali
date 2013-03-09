.class public Lcom/futuredial/ui/ViewReport;
.super Lcom/futuredial/ui/GeneralViewCtrl;
.source "ViewReport.java"


# static fields
.field public static final LOG_BM:Ljava/lang/String; = "bookmark,"

.field public static final LOG_CAL:Ljava/lang/String; = "calendar,"

.field public static final LOG_MUSIC:Ljava/lang/String; = "music,"

.field public static final LOG_PB:Ljava/lang/String; = "contacts,"

.field public static final LOG_PHOTO:Ljava/lang/String; = "photo,"

.field public static final LOG_SMS:Ljava/lang/String; = "SMS,"

.field public static final LOG_TASK:Ljava/lang/String; = "task,"

.field public static final notSelected:I = -0x2

.field public static supportedMod:[Ljava/lang/String; = null

.field public static final tranfer_fail:I = -0x1


# instance fields
.field logsTellHTC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_btnDonePress:Lcom/futuredial/ui/CBtnListener;

.field m_failedModName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_phone:Lcom/futuredial/service/DMIPhone;

.field m_tl:Landroid/widget/TableLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contacts,"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar,"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SMS,"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bookmark,"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo,"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "music,"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "task,"

    aput-object v2, v0, v1

    sput-object v0, Lcom/futuredial/ui/ViewReport;->supportedMod:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/futuredial/ui/GeneralViewCtrl;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewReport;->logsTellHTC:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewReport;->m_btnDonePress:Lcom/futuredial/ui/CBtnListener;

    .line 45
    iput-object v2, p0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    .line 47
    iput-object v2, p0, Lcom/futuredial/ui/ViewReport;->m_tl:Landroid/widget/TableLayout;

    .line 52
    const-string v0, "[report]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewReport;->ViewName:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method add_report_view(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 6
    .parameter "num"
    .parameter "modName"

    .prologue
    const v4, 0x7f070003

    const/4 v5, 0x0

    .line 93
    new-instance v0, Landroid/widget/TableRow;

    iget-object v3, p0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v0, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, tr:Landroid/widget/TableRow;
    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setGravity(I)V

    .line 96
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, trL:Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object v3, p0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 102
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v2, trR:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    iget-object v3, p0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 106
    const/16 v3, 0x2d

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 110
    iget-object v3, p0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-virtual {v3}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v5, v5, v5, v3}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 112
    iget-object v3, p0, Lcom/futuredial/ui/ViewReport;->m_tl:Landroid/widget/TableLayout;

    invoke-virtual {v3, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method create_mod_info()V
    .locals 6

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v2, v2, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v2, v2, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 76
    .local v1, m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget v2, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/futuredial/ui/ViewReport;->ViewName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_writeCount:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_writeCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_writenItemUnitRes()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/futuredial/ui/ViewReport;->get_resource_string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/futuredial/ui/ViewReport;->add_report_view(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/futuredial/ui/ViewReport;->logsTellHTC:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/futuredial/ui/ViewReport;->supportedMod:[Ljava/lang/String;

    iget-object v5, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_writeCount:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-boolean v2, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bSelected:Z

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/futuredial/ui/ViewReport;->logsTellHTC:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/futuredial/ui/ViewReport;->supportedMod:[Ljava/lang/String;

    iget-object v5, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/futuredial/ui/ViewReport;->logsTellHTC:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/futuredial/ui/ViewReport;->supportedMod:[Ljava/lang/String;

    iget-object v5, v1, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v1           #m:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_2
    return-void
.end method

.method on_back_key()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/futuredial/ui/ViewReport;->m_btnDonePress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 252
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/futuredial/ui/GeneralViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    .line 60
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewReport;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewReport;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/service/DMIPhone;

    iput-object v0, p0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 64
    iget-object v0, p0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v0}, Lcom/futuredial/service/DMIPhone;->get_failed_mods()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    .line 65
    iget-object v0, p0, Lcom/futuredial/ui/ViewReport;->ViewName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed modules:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/futuredial/ui/ViewReport;->ViewName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oped modules"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v2}, Lcom/futuredial/service/DMIPhone;->get_result()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 27

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->ViewName:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "set_view()"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->setup_footer_buttons(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    move-object/from16 v22, v0

    const v23, 0x7f090017

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TableLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/futuredial/ui/ViewReport;->m_tl:Landroid/widget/TableLayout;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_tl:Landroid/widget/TableLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 126
    const/16 v22, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->set_step(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v22, v0

    const v23, 0x7f060211

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 129
    const-string v12, "True"

    .line 130
    .local v12, sResult:Ljava/lang/String;
    const/16 v17, 0x0

    .line 131
    .local v17, tip_1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_5

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->headerText:Lcom/htc/widget/HeaderBarText;

    move-object/from16 v22, v0

    const v23, 0x7f06024f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_resource_string(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060236

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/futuredial/service/DMIPhone;->m_bt:Lcom/futuredial/service/DMIBTDevice;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v11

    .line 138
    .local v11, pbMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    if-eqz v11, :cond_0

    iget v0, v11, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_result:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    iget-object v0, v11, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_hasDroppedField:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 139
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x7f060238

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_resource_string(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 142
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v4

    .line 143
    .local v4, calMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    if-eqz v4, :cond_1

    iget v0, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_result:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 145
    iget-object v0, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_hasDroppedField:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 146
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 149
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x7f060249

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_resource_string(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 180
    .end local v4           #calMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v11           #pbMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/ui/ViewReport;->create_mod_info()V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_text1:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_text2:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    move-object/from16 v22, v0

    const v23, 0x7f09000f

    invoke-virtual/range {v22 .. v23}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 186
    .local v16, textLink:Landroid/widget/TextView;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    const v22, 0x7f060243

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_resource_string(I)Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, lan:Ljava/lang/String;
    const-string v22, "http://www.htc.com/Transfer_Data/%s/index.html"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, htcLink:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<a href=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\">"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x7f06022b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_resource_string(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "</a>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 190
    .local v21, urlSource:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_btnDonePress:Lcom/futuredial/ui/CBtnListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const-string v19, "Other"

    .line 198
    .local v19, uploadPhoneMaker:Ljava/lang/String;
    const-string v20, "Other"

    .line 199
    .local v20, uploadPhoneModel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/service/DMIPhone;->m_cfgPhoneInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_9

    .line 201
    const-string v22, "selPhoneMaker"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #uploadPhoneMaker:Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 202
    .restart local v19       #uploadPhoneMaker:Ljava/lang/String;
    const-string v22, "selPhoneModel"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #uploadPhoneModel:Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 216
    .restart local v20       #uploadPhoneModel:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v18

    .line 218
    .local v18, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/service/DMIPhone;->get_failed_mods()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-eqz v22, :cond_3

    .line 227
    :cond_3
    const-string v22, "com.futuredial"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v22

    const-string v23, "transfer_data"

    invoke-interface/range {v22 .. v23}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v22

    const-string v23, "transfer_source"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v22

    const-string v23, "model"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v15

    .line 232
    .local v15, tellhtc:Lcom/htc/utils/ulog/ULogDataWritable;
    const/4 v9, 0x0

    .line 233
    .local v9, iport:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->logsTellHTC:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 234
    .local v14, str:Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 235
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "import"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v15, v0, v14}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    goto :goto_3

    .line 148
    .end local v6           #htcLink:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #iport:I
    .end local v10           #lan:Ljava/lang/String;
    .end local v14           #str:Ljava/lang/String;
    .end local v15           #tellhtc:Lcom/htc/utils/ulog/ULogDataWritable;
    .end local v16           #textLink:Landroid/widget/TextView;
    .end local v18           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .end local v19           #uploadPhoneMaker:Ljava/lang/String;
    .end local v20           #uploadPhoneModel:Ljava/lang/String;
    .end local v21           #urlSource:Ljava/lang/String;
    .restart local v4       #calMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .restart local v11       #pbMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 155
    .end local v4           #calMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v11           #pbMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->headerText:Lcom/htc/widget/HeaderBarText;

    move-object/from16 v22, v0

    const v23, 0x7f060254

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_resource_string(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 158
    const-string v5, ""

    .line 159
    .local v5, failedmodtext:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #failedmodtext:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 175
    .restart local v5       #failedmodtext:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/futuredial/ui/DMIUI;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f06023f

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v5, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 178
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "False,"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 163
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 164
    .local v13, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_8

    .line 166
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    add-int/lit8 v22, v13, -0x2

    move/from16 v0, v22

    if-eq v7, v0, :cond_7

    .line 168
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 170
    :cond_8
    const-string v22, "%s %s %s"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v5, v23, v24

    const/16 v24, 0x1

    const v25, 0x7f060225

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewReport;->get_resource_string(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_failedModName:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    add-int/lit8 v26, v13, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 207
    .end local v5           #failedmodtext:Ljava/lang/String;
    .end local v7           #i:I
    .end local v13           #size:I
    .restart local v6       #htcLink:Ljava/lang/String;
    .restart local v10       #lan:Ljava/lang/String;
    .restart local v16       #textLink:Landroid/widget/TextView;
    .restart local v19       #uploadPhoneMaker:Ljava/lang/String;
    .restart local v20       #uploadPhoneModel:Ljava/lang/String;
    .restart local v21       #urlSource:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/ViewReport;->m_phone:Lcom/futuredial/service/DMIPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/futuredial/service/DMIPhone;->m_cfgPhoneInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, ar:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    .line 210
    const/16 v22, 0x0

    aget-object v19, v3, v22

    .line 211
    const/16 v22, 0x1

    aget-object v20, v3, v22

    goto/16 :goto_2

    .line 241
    .end local v3           #ar:[Ljava/lang/String;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #iport:I
    .restart local v15       #tellhtc:Lcom/htc/utils/ulog/ULogDataWritable;
    .restart local v18       #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_a
    invoke-static/range {v18 .. v18}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 244
    invoke-virtual/range {v18 .. v18}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 246
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    return-object v22
.end method
