.class Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler$1;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->mAfterLinkOneListener:Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;->access$1700(Lcom/android/htccontacts/link/ContactLinkActivity$LinkOneHandler;)Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/htccontacts/link/ContactLinkActivity$AfterLinkOneListener;->onAfterLinkOne()V

    .line 696
    return-void
.end method
