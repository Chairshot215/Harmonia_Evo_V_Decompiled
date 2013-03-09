.class Lcom/google/android/partnersetup/RlzDebugViewPingInfo$2;
.super Ljava/lang/Object;
.source "RlzDebugViewPingInfo.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$2;->this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;

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
    const/4 v1, 0x1

    .line 130
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$2;->this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->access$100(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, pingID:Ljava/lang/String;
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v0           #pingID:Ljava/lang/String;
    :goto_0
    return v1

    .line 135
    .restart local p1
    :cond_0
    const-string v2, "time_completed"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 136
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/partnersetup/RlzDebugViewPingInfo$2;->this$0:Lcom/google/android/partnersetup/RlzDebugViewPingInfo;

    #getter for: Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->access$100(Lcom/google/android/partnersetup/RlzDebugViewPingInfo;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/google/android/partnersetup/RlzDebugViewPingInfo;->access$200()Ljava/text/DateFormat;

    move-result-object v3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
