.class Lcom/android/htccontacts/ArrageGroupActivity$GroupContentObserver;
.super Landroid/database/ContentObserver;
.source "ArrageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ArrageGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ArrageGroupActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/htccontacts/ArrageGroupActivity$GroupContentObserver;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    .line 575
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 576
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 580
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/htccontacts/ArrageGroupActivity$GroupContentObserver;->this$0:Lcom/android/htccontacts/ArrageGroupActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/ArrageGroupActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/ArrageGroupActivity;->access$302(Lcom/android/htccontacts/ArrageGroupActivity;Z)Z

    .line 582
    return-void
.end method
