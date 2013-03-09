.class public Lcom/htc/fm/FMPresetBrowserActivity;
.super Lcom/htc/fm/HTCListActivity;
.source "FMPresetBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;,
        Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;,
        Lcom/htc/fm/FMPresetBrowserActivity$AddButtonClickListener;
    }
.end annotation


# static fields
.field private static final DIALOG_NO_HEADSET:I = 0x0

.field public static final MODE_DELETE:I = 0x1

.field public static final MODE_LIST:I = 0x0

.field public static final MODE_RENAME:I = 0x2

.field public static final SELECT_ALL:I = 0x3

.field public static final SELECT_CANCEL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FMPresetBrowserActivity"

.field public static final mDataPrefix:Ljava/lang/String; = "htcfm://"


# instance fields
.field private PresetTitleMarginRight:I

.field albumTitleLen:I

.field mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

.field private mAdapterSent:Z

.field private mAddButton:Landroid/view/View;

.field private mArraySeletcedId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnAdd:Lcom/htc/widget/HeaderBarImage;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field private mDeleteCheckedIcon:Landroid/graphics/drawable/Drawable;

.field private mDeleteUnCheckedIcon:Landroid/graphics/drawable/Drawable;

.field private mDrawableNowPlaying:Landroid/graphics/drawable/Drawable;

.field private mFreq:I

.field private mIsLongPressToEdit:Z

.field mLayoutlist:[I

.field private mListView:Lcom/htc/widget/HtcListView;

.field mLowerSearchFilter:Ljava/lang/String;

.field private mMode:I

.field private mPreset:Lcom/htc/fm/Preset;

.field private mPresetAddView:Landroid/view/View;

.field mPresetCols:[Ljava/lang/String;

.field private mRds:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRowId:I

.field private mSaveBtn:Landroid/widget/Button;

.field private mSavePanel:Landroid/view/View;

.field private mSelectCursor:Landroid/database/Cursor;

.field private mSelectCursorPosition:I

.field private mSelectRowId:I

.field private mSupportAddBtnOnTitle:Z

.field private mSupportSenseLandscape:Z

.field private mTextTitle01:Lcom/htc/widget/HeaderBarText;

.field private mTitle:Ljava/lang/String;

.field scanning:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Lcom/htc/fm/HTCListActivity;-><init>()V

    .line 31
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    .line 33
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    .line 35
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 38
    iput-boolean v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z

    .line 47
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSavePanel:Landroid/view/View;

    .line 49
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    .line 55
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    .line 59
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPresetAddView:Landroid/view/View;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;

    .line 63
    new-array v0, v2, [I

    const v1, 0x2090062

    aput v1, v0, v4

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mLayoutlist:[I

    .line 77
    iput v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 83
    iput-boolean v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportSenseLandscape:Z

    .line 84
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAddButton:Landroid/view/View;

    .line 355
    iput v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    .line 357
    iput v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRds:Ljava/lang/String;

    .line 589
    iput v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->PresetTitleMarginRight:I

    .line 611
    iput-boolean v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->scanning:Z

    .line 613
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->albumTitleLen:I

    .line 626
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPresetCols:[Ljava/lang/String;

    .line 698
    iput-boolean v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mIsLongPressToEdit:Z

    .line 1296
    iput v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectRowId:I

    .line 1297
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursor:Landroid/database/Cursor;

    .line 1298
    iput v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursorPosition:I

    .line 1461
    iput-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/fm/FMPresetBrowserActivity;Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/FMPresetBrowserActivity;->getPresetCursor(Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/fm/FMPresetBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPresetAddView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mDeleteCheckedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mDeleteUnCheckedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/fm/FMPresetBrowserActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity;->getFreqText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/fm/FMPresetBrowserActivity;)Lcom/htc/fm/Preset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/fm/FMPresetBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->PresetTitleMarginRight:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/fm/FMPresetBrowserActivity;Lcom/htc/fm/Preset;)Lcom/htc/fm/Preset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mDrawableNowPlaying:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/fm/FMPresetBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity;->tune2Channel(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/fm/FMPresetBrowserActivity;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/FMPresetBrowserActivity;->setPreset(ILandroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->goToEditPreset()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/fm/FMPresetBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/fm/FMPresetBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/fm/FMPresetBrowserActivity;Landroid/database/Cursor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/fm/FMPresetBrowserActivity;->setSelectPosition(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/fm/FMPresetBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/fm/FMPresetBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/fm/FMPresetBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/fm/FMPresetBrowserActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/fm/FMPresetBrowserActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->notifyPresetDataChanged()V

    return-void
.end method

.method private createMenus(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1395
    if-nez p1, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1397
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1398
    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1400
    :pswitch_0
    const v2, 0x20c01fc

    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f02004c

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1402
    const v2, 0x7f090009

    invoke-interface {p1, v4, v6, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f020050

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1405
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z

    if-ne v2, v3, :cond_0

    .line 1408
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1409
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1410
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1411
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1418
    .end local v0           #item:Landroid/view/MenuItem;
    :pswitch_1
    const/4 v2, 0x3

    const v5, 0x20c013a

    invoke-interface {p1, v4, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 1419
    .local v1, mi:Landroid/view/MenuItem;
    if-eqz v1, :cond_4

    .line 1421
    const v2, 0x2080334

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1422
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v2, :cond_4

    .line 1423
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getSelectedCount()I

    move-result v2

    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v5}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1426
    :cond_4
    const/4 v2, 0x4

    const v5, 0x20c013b

    invoke-interface {p1, v4, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 1427
    if-eqz v1, :cond_0

    .line 1429
    const v2, 0x208033c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1430
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v2, :cond_0

    .line 1431
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getSelectedCount()I

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 1423
    goto :goto_1

    :cond_6
    move v3, v4

    .line 1431
    goto :goto_2

    .line 1398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deletePreset(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 519
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 534
    :goto_0
    return-void

    .line 523
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .local v0, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id==\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowser] deletePreset() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "internal"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 529
    iput-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 530
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 531
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    .line 533
    :cond_1
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->notifyPresetDataChanged()V

    goto :goto_0
.end method

.method private getFreq(Landroid/database/Cursor;)I
    .locals 2
    .parameter "cursor"

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    const/4 v0, -0x1

    .line 424
    :goto_0
    return v0

    .line 419
    :cond_0
    const/4 v0, -0x1

    .line 421
    .local v0, freq:I
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fm/FMUtils;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getFreqText(I)Ljava/lang/String;
    .locals 4
    .parameter "freq"

    .prologue
    .line 688
    div-int/lit16 v0, p1, 0x3e8

    .line 689
    .local v0, p1:I
    rem-int/lit16 v1, p1, 0x3e8

    .line 690
    .local v1, r:I
    rem-int/lit8 v2, v1, 0x64

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v1, 0x64

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getPresetCursor(Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;
    .locals 10
    .parameter "async"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 648
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 651
    const-string v0, "mime_type == \'application/fm\' "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :goto_0
    const/4 v6, 0x0

    .line 656
    .local v6, keywords:[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 658
    .local v5, whereclause:Ljava/lang/String;
    const-string v0, "internal"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 660
    .local v3, tableUri:Landroid/net/Uri;
    if-eqz p1, :cond_1

    .line 661
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPresetCols:[Ljava/lang/String;

    const-string v7, "_size ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_1
    return-object v2

    .line 653
    .end local v3           #tableUri:Landroid/net/Uri;
    .end local v5           #whereclause:Ljava/lang/String;
    .end local v6           #keywords:[Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id == \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 666
    .restart local v3       #tableUri:Landroid/net/Uri;
    .restart local v5       #whereclause:Ljava/lang/String;
    .restart local v6       #keywords:[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPresetCols:[Ljava/lang/String;

    const-string v7, "_size ASC"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/fm/FMPresetBrowserActivity;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    move-object v2, v8

    .line 668
    goto :goto_1
.end method

.method private goToEditPreset()V
    .locals 3

    .prologue
    .line 702
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    if-nez v1, :cond_0

    .line 712
    :goto_0
    return-void

    .line 705
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/fm/FMPresetEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fm_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v1, "fm_rowid"

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget v2, v2, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    const-string v1, "fm_freq"

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget v2, v2, Lcom/htc/fm/Preset;->freq:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    const-string v1, "fm_title"

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget-object v2, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v1, "fm_rds"

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget-object v2, v2, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const/16 v1, 0x6f

    invoke-virtual {p0, v0, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private hideButtonsPanel()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSavePanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAddButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSavePanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initParam()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 364
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 365
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 366
    const-string v2, "FMPresetBrowserActivity"

    const-string v3, "[FMPresetBrowserActivity]intent is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fm_mode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 371
    .local v1, mode:I
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fm_rowid"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    .line 372
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fm_freq"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    .line 373
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fm_title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    .line 374
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 375
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fm_rds"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRds:Ljava/lang/String;

    .line 377
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRds:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 378
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRds:Ljava/lang/String;

    .line 379
    :cond_2
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMPresetBrowserActivity]@@@@ #### mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " freq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rowid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iput v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 381
    new-instance v2, Lcom/htc/fm/Preset;

    invoke-direct {v2}, Lcom/htc/fm/Preset;-><init>()V

    iput-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    .line 382
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    iput v3, v2, Lcom/htc/fm/Preset;->id:I

    .line 383
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    iput v3, v2, Lcom/htc/fm/Preset;->rowId:I

    .line 384
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    iput v3, v2, Lcom/htc/fm/Preset;->freq:I

    .line 385
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 386
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRds:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 388
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    goto/16 :goto_0
.end method

.method private notifyPresetDataChanged()V
    .locals 3

    .prologue
    .line 537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.servicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "preset_data_changed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 540
    return-void
.end method

.method private query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 636
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 637
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 643
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 640
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 641
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 642
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    .line 643
    goto :goto_0
.end method

.method private setIntentReceiver()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v1, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/fm/FMPresetBrowserActivity$AppBroadcastReceiver;-><init>(Lcom/htc/fm/FMPresetBrowserActivity;Lcom/htc/fm/FMPresetBrowserActivity$1;)V

    iput-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.fm.RemoteControl"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.fm.cmdstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v1, "com.htc.fm.statechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setPreset(ILandroid/database/Cursor;)V
    .locals 2
    .parameter "position"
    .parameter "cursor"

    .prologue
    .line 715
    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 716
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    if-nez v0, :cond_0

    .line 717
    new-instance v0, Lcom/htc/fm/Preset;

    invoke-direct {v0}, Lcom/htc/fm/Preset;-><init>()V

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/fm/Preset;->rowId:I

    .line 719
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/fm/FMUtils;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/htc/fm/Preset;->freq:I

    .line 720
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/fm/Preset;->rds:Ljava/lang/String;

    .line 722
    return-void
.end method

.method private setSelectPosition(Landroid/database/Cursor;I)V
    .locals 5
    .parameter "cursor"
    .parameter "freq"

    .prologue
    .line 392
    if-nez p1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    const-string v2, "FMPresetBrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMPresetBrowserActivity]setSelectPosition("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, id:I
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity;->getFreq(Landroid/database/Cursor;)I

    move-result v1

    .line 401
    .local v1, tmpFreq:I
    if-ne v1, p2, :cond_2

    .line 402
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->setSelection(I)V

    goto :goto_0

    .line 406
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    add-int/lit8 v0, v0, 0x1

    .line 408
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity;->getFreq(Landroid/database/Cursor;)I

    move-result v1

    .line 409
    if-ne v1, p2, :cond_2

    .line 410
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->setSelection(I)V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 1197
    const-string v1, ""

    .line 1198
    .local v1, title:Ljava/lang/String;
    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 1210
    :goto_0
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1211
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1212
    .local v0, count:I
    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    if-nez v2, :cond_0

    .line 1213
    add-int/lit8 v0, v0, -0x1

    .line 1216
    .end local v0           #count:I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1217
    return-void

    .line 1200
    :pswitch_0
    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1201
    goto :goto_0

    .line 1203
    :pswitch_1
    const v2, 0x7f090029

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1204
    goto :goto_0

    .line 1206
    :pswitch_2
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private toFreq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "preFreq"

    .prologue
    .line 680
    if-nez p1, :cond_1

    .line 681
    const/4 p1, 0x0

    .line 684
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 682
    .restart local p1
    :cond_1
    const-string v0, "htcfm://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 684
    const-string v0, "htcfm://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private tune2Channel(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 279
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowserActivity] Tune2Channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, data:Landroid/content/Intent;
    const-string v1, "fm_rowid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 283
    return-void
.end method

.method private updateUi()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 546
    iget v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->setTitle()V

    .line 587
    return-void

    .line 548
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->hideButtonsPanel()V

    .line 549
    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 550
    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    const v4, 0x7f090028

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 551
    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v3, :cond_1

    .line 552
    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v3}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->notifyDataSetChanged()V

    .line 554
    :cond_1
    const v3, 0x7f04002d

    invoke-virtual {p0, v3}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 555
    .local v0, EmptyText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 556
    .local v1, count:I
    :goto_1
    if-lez v1, :cond_3

    .line 557
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    :goto_2
    iget-boolean v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z

    if-eqz v3, :cond_0

    .line 564
    invoke-static {p0, v2}, Lcom/htc/fm/CommonControlWrapper;->swapTitlebar(Landroid/app/Activity;Z)V

    goto :goto_0

    .end local v1           #count:I
    :cond_2
    move v1, v2

    .line 555
    goto :goto_1

    .line 559
    .restart local v1       #count:I
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 567
    .end local v0           #EmptyText:Landroid/widget/TextView;
    .end local v1           #count:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->showButtonsPanel()V

    .line 568
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 569
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 571
    iget-boolean v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z

    if-eqz v2, :cond_0

    .line 572
    invoke-static {p0, v4}, Lcom/htc/fm/CommonControlWrapper;->swapTitlebar(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 578
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->hideButtonsPanel()V

    .line 579
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 580
    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 582
    iget-boolean v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z

    if-eqz v2, :cond_0

    .line 583
    invoke-static {p0, v4}, Lcom/htc/fm/CommonControlWrapper;->swapTitlebar(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 337
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->showDatabaseError()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->hideEmptyErrorView()V

    .line 346
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 347
    .local v0, lv:Lcom/htc/widget/HtcListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 348
    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 350
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v0, v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->init(Landroid/view/ViewGroup;Landroid/database/Cursor;)V

    .line 351
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    .line 352
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget v2, v2, Lcom/htc/fm/Preset;->freq:I

    invoke-direct {p0, v1, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->setSelectPosition(Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1466
    const-string v5, "FMPresetBrowserActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMPresetBrowserActivity]Request Code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const-string v5, "FMPresetBrowserActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMPresetBrowserActivity]Result Code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    if-eq p2, v8, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1473
    :cond_1
    const-string v5, "fm_mode"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1474
    .local v1, mode:I
    const-string v5, "fm_rowid"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1475
    .local v3, rowid:I
    const-string v5, "fm_freq"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1476
    .local v0, freq:I
    const-string v5, "fm_title"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1477
    .local v4, title:Ljava/lang/String;
    const-string v5, "fm_rds"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1478
    .local v2, rds:Ljava/lang/String;
    const-string v5, "FMPresetBrowserActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMPresetBrowserActivity]mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rowid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string v5, "FMPresetBrowserActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[FMPresetBrowserActivity]title:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rds:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const/4 v5, 0x1

    if-ne v1, v5, :cond_4

    .line 1482
    if-eq v0, v8, :cond_3

    .line 1483
    const-string v5, "FMPresetBrowserActivity"

    const-string v6, "[FMPresetEditActivity] onActivityResult() MODE_LIST_NEW"

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iput v9, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 1486
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v5, :cond_2

    .line 1487
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget v6, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    invoke-virtual {v5, v6}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    .line 1488
    :cond_2
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->notifyPresetDataChanged()V

    .line 1493
    :cond_3
    iget v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    if-ne v5, v0, :cond_4

    if-eq v0, v8, :cond_4

    .line 1494
    iput-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    .line 1499
    :cond_4
    if-ne v1, v10, :cond_0

    .line 1501
    const-string v5, "FMPresetBrowserActivity"

    const-string v6, "[FMPresetEditActivity] onActivityResult() MODE_LIST_EDIT"

    invoke-static {v5, v6}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    if-eq v0, v8, :cond_7

    .line 1505
    iget-boolean v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mIsLongPressToEdit:Z

    if-eqz v5, :cond_8

    .line 1506
    iput v9, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 1511
    :goto_1
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v5, :cond_6

    .line 1512
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_5

    .line 1513
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1514
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 1515
    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget v6, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    invoke-virtual {v5, v6}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    .line 1517
    :cond_6
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->notifyPresetDataChanged()V

    .line 1520
    :cond_7
    iget v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    if-ne v5, v0, :cond_0

    if-eq v0, v8, :cond_0

    .line 1521
    iput-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 1508
    :cond_8
    iput v10, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    iget v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    if-eqz v0, :cond_2

    .line 288
    iput v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 289
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    const v1, 0x20c01fc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 297
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    invoke-super {p0}, Lcom/htc/fm/HTCListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 591
    const-string v0, "FMPresetBrowserActivity"

    const-string v1, "@@@@@@@@@@@@@@@@@ onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    .line 595
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->PresetTitleMarginRight:I

    .line 598
    invoke-super {p0, p1}, Lcom/htc/fm/HTCListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 599
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x1

    .line 1358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1390
    invoke-super {p0, p1}, Lcom/htc/fm/HTCListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 1362
    :pswitch_0
    iget v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursorPosition:I

    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4, v5}, Lcom/htc/fm/FMPresetBrowserActivity;->setPreset(ILandroid/database/Cursor;)V

    .line 1363
    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    const-string v5, ""

    iput-object v5, v4, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    .line 1364
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    .line 1365
    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget v4, v4, Lcom/htc/fm/Preset;->rowId:I

    iput v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    .line 1367
    const-string v4, "FMPresetBrowserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FMPresetBrowser] delete("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectRowId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    iget v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectRowId:I

    if-eq v4, v7, :cond_1

    .line 1370
    iget v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectRowId:I

    invoke-direct {p0, v4}, Lcom/htc/fm/FMPresetBrowserActivity;->deletePreset(I)V

    .line 1373
    :cond_1
    const v4, 0x7f04002d

    invoke-virtual {p0, v4}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1374
    .local v0, EmptyText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1375
    .local v1, count:I
    :goto_1
    if-lez v1, :cond_3

    .line 1376
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v1           #count:I
    :cond_2
    move v1, v3

    .line 1374
    goto :goto_1

    .line 1378
    .restart local v1       #count:I
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1382
    .end local v0           #EmptyText:Landroid/widget/TextView;
    .end local v1           #count:I
    :pswitch_1
    iget v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursorPosition:I

    if-eq v3, v7, :cond_0

    .line 1384
    iput-boolean v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mIsLongPressToEdit:Z

    .line 1385
    iget v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursorPosition:I

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v4}, Lcom/htc/fm/FMPresetBrowserActivity;->setPreset(ILandroid/database/Cursor;)V

    .line 1386
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->goToEditPreset()V

    goto :goto_0

    .line 1358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/htc/fm/HTCListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "FMPresetBrowserActivity"

    const-string v1, "[FMPresetBrowserActivity] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->useSenseLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportSenseLandscape:Z

    .line 111
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 112
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->requestWindowFeature(I)Z

    .line 115
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->setVolumeControlStream(I)V

    .line 117
    iput-object p0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    .line 118
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->setContentView(I)V

    .line 120
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 122
    iget-boolean v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportSenseLandscape:Z

    if-ne v0, v2, :cond_2

    .line 124
    invoke-static {p0}, Lcom/htc/fm/CommonControlWrapper;->getSaveCancelPanel(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v8

    .line 125
    .local v8, saveCancelPanel:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 126
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .end local v8           #saveCancelPanel:Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20801aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mDeleteCheckedIcon:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20801a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mDeleteUnCheckedIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mDrawableNowPlaying:Landroid/graphics/drawable/Drawable;

    .line 136
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    .line 137
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 138
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x208087c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 140
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mBtnAdd:Lcom/htc/widget/HeaderBarImage;

    new-instance v1, Lcom/htc/fm/FMPresetBrowserActivity$AddButtonClickListener;

    invoke-direct {v1, p0}, Lcom/htc/fm/FMPresetBrowserActivity$AddButtonClickListener;-><init>(Lcom/htc/fm/FMPresetBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    .line 145
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 146
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTextTitle01:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 148
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HeaderBarMiddle;

    .line 149
    .local v7, hBar:Lcom/htc/widget/HeaderBarMiddle;
    invoke-virtual {v7, v2}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 151
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    const-string v2, "list_selector_background"

    const v3, 0x1080062

    invoke-static {v1, v2, v3}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelector(I)V

    .line 152
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v4, v4}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 154
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->initParam()V

    .line 155
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    .line 156
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-nez v0, :cond_3

    .line 157
    const-string v0, "####"

    const-string v1, "start query"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget-object v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mLayoutlist:[I

    const/16 v6, 0x10

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;-><init>(Lcom/htc/fm/FMPresetBrowserActivity;Landroid/content/Context;Lcom/htc/fm/FMPresetBrowserActivity;Landroid/database/Cursor;[II)V

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    .line 159
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    .line 161
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->setActivity(Lcom/htc/fm/FMPresetBrowserActivity;)V

    .line 162
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    invoke-direct {p0, v0, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->getPresetCursor(Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;

    .line 165
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->PresetTitleMarginRight:I

    .line 181
    :goto_2
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->setIntentReceiver()V

    .line 182
    return-void

    .line 114
    .end local v7           #hBar:Lcom/htc/widget/HeaderBarMiddle;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->requestWindowFeature(I)Z

    goto/16 :goto_0

    .line 130
    :cond_2
    const v0, 0x2020002

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 170
    .restart local v7       #hBar:Lcom/htc/widget/HeaderBarMiddle;
    :cond_3
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->setActivity(Lcom/htc/fm/FMPresetBrowserActivity;)V

    .line 171
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    .line 173
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 175
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    goto :goto_2

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    invoke-direct {p0, v0, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->getPresetCursor(Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 1304
    iget v8, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    if-eqz v8, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    const/4 v8, -0x1

    iput v8, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectRowId:I

    .line 1310
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    .local v4, mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-boolean v8, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSupportAddBtnOnTitle:Z

    if-nez v8, :cond_2

    iget v8, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    if-lez v8, :cond_0

    .line 1321
    :cond_2
    const-string v8, "FMPresetBrowserActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FMPresetBrowser] position("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const v11, 0x20c01fc

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1323
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const v11, 0x7f090009

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1325
    iget-object v8, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget v9, v4, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v9}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getNode(I)Lcom/htc/fm/HtcListNode;

    move-result-object v5

    .line 1326
    .local v5, node:Lcom/htc/fm/HtcListNode;
    iget-object v8, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    if-nez v8, :cond_3

    .line 1327
    const-string v8, "FMPresetBrowserActivity"

    const-string v9, "[FMPresetBrowser] deletePreset() cursor is null!!"

    invoke-static {v8, v9}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    .end local v4           #mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v5           #node:Lcom/htc/fm/HtcListNode;
    :catch_0
    move-exception v1

    .line 1312
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 1313
    const-string v8, "FMPresetBrowserActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[FMPresetBrowser] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/fm/FMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1331
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v4       #mi:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .restart local v5       #node:Lcom/htc/fm/HtcListNode;
    :cond_3
    iget-object v8, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    iget v9, v5, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1332
    const-string v8, "FMPresetBrowserActivity"

    const-string v9, "[FMPresetBrowser] deletePreset() move failed!!"

    invoke-static {v8, v9}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1335
    :cond_4
    iget-object v8, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    iput-object v8, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursor:Landroid/database/Cursor;

    .line 1336
    iget v8, v5, Lcom/htc/fm/HtcListNode;->cursorPosition:I

    iput v8, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectCursorPosition:I

    .line 1337
    iget-object v8, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSelectRowId:I

    .line 1339
    iget-object v8, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/fm/FMPresetBrowserActivity;->toFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1340
    .local v2, freq:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/htc/fm/FMPresetBrowserActivity;->getFreqText(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MHz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1342
    .local v3, freqText:Ljava/lang/String;
    iget-object v8, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1343
    .local v7, title:Ljava/lang/String;
    iget-object v8, v5, Lcom/htc/fm/HtcListNode;->cursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1344
    .local v6, rds:Ljava/lang/String;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 1345
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1352
    :cond_5
    :goto_1
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 1347
    :cond_6
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 1348
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, d:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 100
    .end local v0           #d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 90
    .restart local v0       #d:Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090020

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/htc/fm/FMPresetBrowserActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/fm/FMPresetBrowserActivity$1;-><init>(Lcom/htc/fm/FMPresetBrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1221
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity;->createMenus(Landroid/view/Menu;)V

    .line 1222
    invoke-super {p0, p1}, Lcom/htc/fm/HTCListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1223
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 252
    const-string v1, "FMPresetBrowserActivity"

    const-string v2, "[FMPresetBrowserActivity] onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 256
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 260
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mArraySeletcedId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 265
    :cond_2
    invoke-super {p0}, Lcom/htc/fm/HTCListActivity;->onDestroy()V

    .line 266
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const v6, 0x20c01fc

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1293
    :cond_0
    :goto_0
    return v4

    .line 1236
    :pswitch_0
    const-string v1, "ANALYTIC_FMRadio"

    const-string v2, "[FMPresetBrowser] Mode List"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    if-eqz v1, :cond_0

    .line 1239
    iput v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 1240
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    .line 1241
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v1, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    goto :goto_0

    .line 1245
    :pswitch_1
    const-string v1, "ANALYTIC_FMRadio"

    const-string v2, "[FMPresetBrowser] Mode Delete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    if-eq v1, v4, :cond_0

    .line 1248
    iput v4, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 1249
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    .line 1250
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v1, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    goto :goto_0

    .line 1255
    :pswitch_2
    const-string v1, "ANALYTIC_FMRadio"

    const-string v2, "[FMPresetBrowser] Mode Rename"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    if-eq v1, v5, :cond_0

    .line 1258
    iput v5, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    .line 1259
    invoke-direct {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->updateUi()V

    .line 1260
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v1, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mMode:I

    invoke-virtual {v1, v2}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->changeMode(I)V

    goto :goto_0

    .line 1264
    :pswitch_3
    const-string v1, "ANALYTIC_FMRadio"

    const-string v2, "[FMPresetBrowser] Select All"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->setSelectAll()V

    .line 1267
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->notifyDataSetChanged()V

    .line 1268
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getSelectedCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1270
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getSelectedCount()I

    move-result v0

    .line 1271
    .local v0, deleteCount:I
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 1272
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->append(Ljava/lang/CharSequence;)V

    .line 1274
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1280
    .end local v0           #deleteCount:I
    :pswitch_4
    const-string v1, "ANALYTIC_FMRadio"

    const-string v2, "[FMPresetBrowser] Select Cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->setUnSelect()V

    .line 1283
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    invoke-virtual {v1}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->notifyDataSetChanged()V

    .line 1285
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 1289
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 329
    const-string v0, "FMPresetBrowserActivity"

    const-string v1, "[FMPresetBrowserActivity]onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-super {p0}, Lcom/htc/fm/HTCListActivity;->onPause()V

    .line 331
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1228
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetBrowserActivity;->createMenus(Landroid/view/Menu;)V

    .line 1229
    invoke-super {p0, p1}, Lcom/htc/fm/HTCListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "FMPresetBrowserActivity"

    const-string v1, "[FMPresetBrowserActivity] onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0}, Lcom/htc/fm/HTCListActivity;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 276
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapterSent:Z

    .line 618
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outcicle"

    .prologue
    .line 623
    invoke-super {p0, p1}, Lcom/htc/fm/HTCListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 624
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 674
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 677
    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 1456
    if-nez p1, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    .line 1457
    const/4 v1, -0x1

    invoke-direct {p0, v2, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->getPresetCursor(Landroid/content/AsyncQueryHandler;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1458
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 1459
    return-void

    .line 1456
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 311
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowserActivity]mRowId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mPreset:Lcom/htc/fm/Preset;

    iget v3, v3, Lcom/htc/fm/Preset;->rowId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowserActivity]mFreq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "FMPresetBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FMPresetBrowserActivity]mTitle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 318
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "fm_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v1, "fm_rowid"

    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mRowId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string v1, "fm_freq"

    iget v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mFreq:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v1, "fm_title"

    iget-object v2, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/fm/FMPresetBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 324
    invoke-super {p0}, Lcom/htc/fm/HTCListActivity;->onStop()V

    .line 325
    return-void
.end method

.method showButtonsPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSavePanel:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSavePanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const v1, 0x2020001

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    .line 439
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    const v2, 0x20c01fc

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 443
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 444
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSaveBtn:Landroid/widget/Button;

    new-instance v2, Lcom/htc/fm/FMPresetBrowserActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/fm/FMPresetBrowserActivity$2;-><init>(Lcom/htc/fm/FMPresetBrowserActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    const v1, 0x2020003

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 491
    .local v0, Cancel:Landroid/widget/Button;
    const v1, 0x20c0151

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 492
    new-instance v1, Lcom/htc/fm/FMPresetBrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/fm/FMPresetBrowserActivity$3;-><init>(Lcom/htc/fm/FMPresetBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    const v1, 0x2020002

    invoke-virtual {p0, v1}, Lcom/htc/fm/FMPresetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSavePanel:Landroid/view/View;

    .line 512
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSavePanel:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/htc/fm/FMPresetBrowserActivity;->mSavePanel:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
