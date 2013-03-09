.class Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "ComposerBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComposerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

.field private mComposerIdx:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private mCursor:Landroid/database/Cursor;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnknownComposer:Ljava/lang/String;

.field private mlayout:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/ComposerBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mConstraint:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mConstraintIsValid:Z

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    iput-object p3, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p4, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mlayout:I

    iput-object p5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mCursor:Landroid/database/Cursor;

    const v0, 0x7f070045

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mUnknownComposer:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mResources:Landroid/content/res/Resources;

    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p5, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)Lcom/htc/music/browserlayer/ComposerBrowserActivity;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "composer"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mComposerIdx:I

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mComposerIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$ViewHolder;

    iget v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mComposerIdx:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mUnknownComposer:Ljava/lang/String;

    :cond_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    iget-object v6, v6, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v5, v0, v6}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$700(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v5, v4, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v5, v4, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$800(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mComposerCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$802(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->updateOptionsMenu()V

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    if-eqz p1, :cond_3

    new-instance v0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerCursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-direct {v0, v1, p1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerCursor;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/database/Cursor;)V

    invoke-super {p0, v0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;)V

    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v2, v1, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mConstraint:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->mActivity:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    return-void
.end method
