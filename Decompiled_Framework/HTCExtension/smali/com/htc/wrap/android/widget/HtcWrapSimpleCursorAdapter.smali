.class public Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "HtcWrapSimpleCursorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    return-void
.end method


# virtual methods
.method public getAutoRequery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mAutoRequery:Z

    return v0
.end method

.method public getDataValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mDataValid:Z

    return v0
.end method

.method public setAutoRequery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mAutoRequery:Z

    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method public setDataValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/wrap/android/widget/HtcWrapSimpleCursorAdapter;->mDataValid:Z

    return-void
.end method
