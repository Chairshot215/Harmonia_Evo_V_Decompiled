.class Lcom/android/htccontacts/ContactDetailMailActivity$1;
.super Ljava/lang/Object;
.source "ContactDetailMailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailMailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailMailActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailMailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailMailActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/ContactDetailMailActivity;->mWhereClause:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$002(Lcom/android/htccontacts/ContactDetailMailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailMailActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailMailActivity;

    #calls: Lcom/android/htccontacts/ContactDetailMailActivity;->rebuildEntries()V
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailMailActivity;->access$100(Lcom/android/htccontacts/ContactDetailMailActivity;)V

    .line 321
    return-void
.end method
