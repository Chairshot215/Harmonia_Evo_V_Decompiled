.class Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;
.super Landroid/database/ContentObserver;
.source "PeopleApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/PeopleApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllPeopleChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/PeopleApp;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/PeopleApp;)V
    .locals 1
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;->this$0:Lcom/android/htccontacts/PeopleApp;

    .line 526
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 527
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-virtual {v0}, Lcom/android/htccontacts/PeopleApp;->onAllPeopleContentChanged()V

    .line 537
    return-void
.end method
