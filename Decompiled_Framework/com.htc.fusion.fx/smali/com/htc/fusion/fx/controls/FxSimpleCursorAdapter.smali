.class public Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;
.super Lcom/htc/fusion/fx/controls/FxCursorAdapter;
.source "FxSimpleCursorAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mControl:[Ljava/lang/String;

.field private mFrom:[Ljava/lang/String;

.field private mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fusion/fx/controls/FxCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p3, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mFrom:[Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mControl:[Ljava/lang/String;

    new-instance v0, Lcom/htc/fusion/fx/controls/FxListItemBinder;

    invoke-direct {v0}, Lcom/htc/fusion/fx/controls/FxListItemBinder;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mFrom:[Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mControl:[Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public getFxListItemBinder()Lcom/htc/fusion/fx/controls/FxListItemBinder;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

    return-object v0
.end method

.method public setFxListItemBinder(Lcom/htc/fusion/fx/controls/FxListItemBinder;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fxListItemBinder of setFxListItemBinder(FxListItemBinder fxListItemBinder) is null reference."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

    return-void
.end method

.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 7

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mControl:[Ljava/lang/String;

    array-length v0, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mFrom:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mControl:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxControl;

    sget-boolean v4, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "FxListItem1.getDescendant(mFxTextLabelControl)=null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleCursorAdapter;->mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1, v2, v1}, Lcom/htc/fusion/fx/controls/FxListItemBinder;->setFxListItemValue(Landroid/content/Context;ILcom/htc/fusion/fx/FxControl;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
