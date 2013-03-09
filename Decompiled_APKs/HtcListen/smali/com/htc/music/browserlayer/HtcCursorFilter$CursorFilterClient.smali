.class interface abstract Lcom/htc/music/browserlayer/HtcCursorFilter$CursorFilterClient;
.super Ljava/lang/Object;
.source "HtcCursorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/HtcCursorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CursorFilterClient"
.end annotation


# virtual methods
.method public abstract changeCursor(Landroid/database/Cursor;)V
.end method

.method public abstract convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public abstract getCursor()Landroid/database/Cursor;
.end method

.method public abstract runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
.end method
