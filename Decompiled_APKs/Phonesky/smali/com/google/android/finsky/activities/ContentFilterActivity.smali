.class public Lcom/google/android/finsky/activities/ContentFilterActivity;
.super Landroid/app/Activity;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# instance fields
.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private final mCheckables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckboxesView:Landroid/widget/LinearLayout;

.field private mLevel:Lcom/google/android/finsky/config/ContentLevel;

.field private mMoreInfoView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    return-void
.end method

.method public static getLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "level"

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 148
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 136
    :pswitch_0
    const v1, 0x7f0701b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 138
    :pswitch_1
    const v1, 0x7f0701ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 140
    :pswitch_2
    const v1, 0x7f0701bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 142
    :pswitch_3
    const v1, 0x7f0701bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 144
    :pswitch_4
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :pswitch_5
    const v1, 0x7f0701be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V
    .locals 6
    .parameter "layoutInflater"
    .parameter "level"
    .parameter "checkboxId"
    .parameter "stringResourceId"

    .prologue
    .line 72
    const v3, 0x1090010

    iget-object v4, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, row:Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, rowText:Landroid/widget/TextView;
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 78
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 80
    check-cast v0, Landroid/widget/Checkable;

    .line 81
    .local v0, checkable:Landroid/widget/Checkable;
    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v3, p2}, Lcom/google/android/finsky/config/ContentLevel;->encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 84
    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    .line 85
    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v3, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method private setupViews()V
    .locals 6

    .prologue
    .line 90
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 91
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->EVERYONE:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080005

    const v4, 0x7f0701ba

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 96
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->LOW_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080006

    const v4, 0x7f0701bb

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 98
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->MEDIUM_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080007

    const v4, 0x7f0701bc

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 100
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->HIGH_MATURITY:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080008

    const v4, 0x7f0701bd

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 102
    sget-object v2, Lcom/google/android/finsky/config/ContentLevel;->SHOW_ALL:Lcom/google/android/finsky/config/ContentLevel;

    const v3, 0x7f080009

    const v4, 0x7f0701be

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupCheckbox(Landroid/view/LayoutInflater;Lcom/google/android/finsky/config/ContentLevel;II)V

    .line 106
    const-string v2, "%s <a href=\'%s\'>%s</a>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0701bf

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/finsky/config/G;->contentFilterInfoUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f0701c0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, moreInfoText:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 113
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v3, 0x7f0701c2

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 114
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v3, 0x7f0701c3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    .line 115
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/config/ContentLevel;

    iput-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    .line 170
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, checkableRow:Landroid/view/View;
    move-object v2, v0

    .line 171
    check-cast v2, Landroid/widget/Checkable;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/config/ContentLevel;->encompasses(Lcom/google/android/finsky/config/ContentLevel;)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 174
    .end local v0           #checkableRow:Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "settings"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentFilter?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/ContentLevel;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "contentFilter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "contentFilterLevel"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/ContentLevel;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setContentView(I)V

    .line 55
    if-nez p1, :cond_0

    .line 56
    invoke-static {p0}, Lcom/google/android/finsky/config/ContentLevel;->importFromSettings(Landroid/content/Context;)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    .line 62
    :goto_0
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mCheckboxesView:Landroid/widget/LinearLayout;

    .line 63
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mMoreInfoView:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 66
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    .line 68
    return-void

    .line 58
    :cond_0
    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/config/ContentLevel;->convertFromLegacyValue(I)Lcom/google/android/finsky/config/ContentLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    goto :goto_0
.end method

.method public onNegativeButtonClick()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    .line 165
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 4

    .prologue
    .line 153
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    .local v0, currentFilterLevel:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v1

    .line 155
    .local v1, selectedFilterLevel:I
    if-eq v0, v1, :cond_0

    .line 156
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 157
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/ContentFilterActivity;->setResult(I)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ContentFilterActivity;->finish()V

    .line 160
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "level"

    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity;->mLevel:Lcom/google/android/finsky/config/ContentLevel;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/ContentLevel;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    return-void
.end method
