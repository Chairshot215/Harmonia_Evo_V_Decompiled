.class public Lcom/htc/launcher/search/SearchPickerActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "SearchPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static GOOGLE_INTENT:Ljava/lang/String; = null

.field private static final GOOGLE_ITEM:I = 0x1

.field public static final PREFERENCES:Ljava/lang/String; = "launcher"

.field private static final RESULT_OK:I = -0x1

.field public static SEARCHANYWHERE_INTENT:Ljava/lang/String; = null

.field private static final SEARCHANYWHERE_ITEM:I = 0x0

.field public static SEARCH_ENGINE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SearchPicker"

.field public static default_Search_Engine:Ljava/lang/String;


# instance fields
.field private choose_search:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "SearchEngine"

    sput-object v0, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCH_ENGINE:Ljava/lang/String;

    .line 27
    const-string v0, "android.search.action.GLOBAL_SEARCH"

    sput-object v0, Lcom/htc/launcher/search/SearchPickerActivity;->GOOGLE_INTENT:Ljava/lang/String;

    .line 28
    const-string v0, "com.htc.searchanywhere.START"

    sput-object v0, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCHANYWHERE_INTENT:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCHANYWHERE_INTENT:Ljava/lang/String;

    sput-object v0, Lcom/htc/launcher/search/SearchPickerActivity;->default_Search_Engine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 31
    sget-object v0, Lcom/htc/launcher/search/SearchPickerActivity;->default_Search_Engine:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/search/SearchPickerActivity;->choose_search:Ljava/lang/String;

    return-void
.end method

.method private initialDialog()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/launcher/search/SearchPickerActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 89
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0b0078

    invoke-virtual {p0, v1}, Lcom/htc/launcher/search/SearchPickerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p0}, Lcom/htc/launcher/search/SearchPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    .line 92
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 93
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/htc/launcher/search/SearchPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 94
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 95
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/htc/launcher/search/SearchPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 96
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    .line 100
    invoke-virtual {p0}, Lcom/htc/launcher/search/SearchPickerActivity;->setupAlert()V

    .line 101
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "which"

    .prologue
    .line 44
    const-string v3, "launcher"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/launcher/search/SearchPickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 47
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    packed-switch p2, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    sget-object v3, Lcom/htc/launcher/search/SearchPickerActivity;->GOOGLE_INTENT:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/launcher/search/SearchPickerActivity;->choose_search:Ljava/lang/String;

    goto :goto_0

    .line 59
    :pswitch_1
    sget-object v3, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCHANYWHERE_INTENT:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/launcher/search/SearchPickerActivity;->choose_search:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v3, "SearchPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user choose "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/launcher/search/SearchPickerActivity;->choose_search:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v3, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCH_ENGINE:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/launcher/search/SearchPickerActivity;->choose_search:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    iget-object v3, p0, Lcom/htc/launcher/search/SearchPickerActivity;->choose_search:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/htc/launcher/search/SearchPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCH_ENGINE:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/launcher/search/SearchPickerActivity;->choose_search:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 74
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "SearchPicker"

    const-string v4, "save value fail"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/htc/launcher/search/SearchPickerActivity;->initialDialog()V

    .line 41
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, adapterview:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 5
    .parameter "listview"

    .prologue
    const/4 v4, 0x0

    .line 105
    const-string v2, "launcher"

    invoke-virtual {p0, v2, v4}, Lcom/htc/launcher/search/SearchPickerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, preferences:Landroid/content/SharedPreferences;
    sget-object v2, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCH_ENGINE:Ljava/lang/String;

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, default_search:Ljava/lang/String;
    sget-object v2, Lcom/htc/launcher/search/SearchPickerActivity;->GOOGLE_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/htc/launcher/search/SearchPickerActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    const/4 v3, 0x1

    iput v3, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v2, Lcom/htc/launcher/search/SearchPickerActivity;->SEARCHANYWHERE_INTENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/htc/launcher/search/SearchPickerActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    goto :goto_0

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/search/SearchPickerActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    goto :goto_0
.end method
