.class Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;
.super Ljava/lang/Object;
.source "RlzDebugViewEventInfo.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private accumulatedLine:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/partnersetup/RlzDebugViewEventInfo;


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzDebugViewEventInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewEventInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 6
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 88
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_0

    .line 116
    .end local p1
    :goto_0
    return v2

    .line 91
    .restart local p1
    :cond_0
    const-string v3, "ap"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_2

    .line 92
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, appName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->accumulatedLine:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 94
    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->accumulatedLine:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_1
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->accumulatedLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iput-object v5, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->accumulatedLine:Ljava/lang/String;

    goto :goto_0

    .line 100
    .end local v0           #appName:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v3, "event_type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_4

    .line 101
    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewEventInfo;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->access$000(Lcom/google/android/partnersetup/RlzDebugViewEventInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo;->getResourceIdForEvent(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, eventType:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->accumulatedLine:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 104
    iput-object v1, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->accumulatedLine:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_3
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->accumulatedLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iput-object v5, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->accumulatedLine:Ljava/lang/String;

    goto :goto_0

    .line 110
    .end local v1           #eventType:Ljava/lang/String;
    .restart local p1
    :cond_4
    const-string v3, "status"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ne p3, v3, :cond_5

    .line 111
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewEventInfo$1;->this$0:Lcom/google/android/partnersetup/RlzDebugViewEventInfo;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/partnersetup/RlzDebugViewEventInfo;->access$000(Lcom/google/android/partnersetup/RlzDebugViewEventInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/partnersetup/RlzProtocol$Events;->getResourceIdForStatus(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 116
    .restart local p1
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
