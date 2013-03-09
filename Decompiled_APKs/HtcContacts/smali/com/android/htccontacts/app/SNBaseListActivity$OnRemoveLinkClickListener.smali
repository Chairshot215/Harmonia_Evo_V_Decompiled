.class public Lcom/android/htccontacts/app/SNBaseListActivity$OnRemoveLinkClickListener;
.super Ljava/lang/Object;
.source "SNBaseListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/SNBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OnRemoveLinkClickListener"
.end annotation


# instance fields
.field public mServiceType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/app/SNBaseListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/SNBaseListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "serviceType"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/htccontacts/app/SNBaseListActivity$OnRemoveLinkClickListener;->this$0:Lcom/android/htccontacts/app/SNBaseListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/android/htccontacts/app/SNBaseListActivity$OnRemoveLinkClickListener;->mServiceType:Ljava/lang/String;

    .line 441
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity$OnRemoveLinkClickListener;->this$0:Lcom/android/htccontacts/app/SNBaseListActivity;

    iget-object v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity$OnRemoveLinkClickListener;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/app/SNBaseListActivity;->onConfirmedUnlinkClick(Ljava/lang/String;)V

    .line 445
    return-void
.end method
