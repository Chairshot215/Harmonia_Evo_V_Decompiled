.class Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "GsmApnProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/GsmApnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrossProcessCursorWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/GsmApnProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/GsmApnProvider;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "cursor"

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;->this$0:Lcom/android/providers/telephony/GsmApnProvider;

    .line 1617
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1618
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 4
    .parameter "position"
    .parameter "window"

    .prologue
    .line 1627
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;->getCount()I

    move-result v3

    if-le p1, v3, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1630
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 1632
    add-int/lit8 v3, p1, -0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;->moveToPosition(I)Z

    .line 1633
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 1634
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 1635
    invoke-virtual {p0}, Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    .line 1636
    .local v0, columnNum:I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 1637
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1638
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1639
    invoke-virtual {p0, v2}, Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1640
    .local v1, field:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1641
    invoke-virtual {p0}, Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;->getPosition()I

    move-result v3

    invoke-virtual {p2, v1, v3, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1642
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1653
    .end local v0           #columnNum:I
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    :catch_0
    move-exception v3

    .line 1655
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 1646
    .restart local v0       #columnNum:I
    .restart local v1       #field:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/providers/telephony/GsmApnProvider$CrossProcessCursorWrapper;->getPosition()I

    move-result v3

    invoke-virtual {p2, v3, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1647
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1655
    .end local v0           #columnNum:I
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v3

    .line 1638
    .restart local v0       #columnNum:I
    .restart local v1       #field:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1655
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #i:I
    :cond_5
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 1622
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 1661
    const/4 v0, 0x0

    return v0
.end method
