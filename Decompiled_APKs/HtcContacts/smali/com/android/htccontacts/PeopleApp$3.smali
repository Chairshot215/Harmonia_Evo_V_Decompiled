.class Lcom/android/htccontacts/PeopleApp$3;
.super Ljava/lang/Object;
.source "PeopleApp.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/PeopleApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/PeopleApp;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/PeopleApp;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$3;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp$3;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-static {v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    .line 465
    const/4 v0, 0x0

    return v0
.end method
