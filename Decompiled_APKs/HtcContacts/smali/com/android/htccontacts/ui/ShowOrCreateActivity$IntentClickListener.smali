.class Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/ShowOrCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentClickListener"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter "parent"
    .parameter "intent"

    .prologue
    .line 274
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    .line 276
    iput-object p2, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    .line 277
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/ShowOrCreateActivity$IntentClickListener;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 284
    return-void
.end method
