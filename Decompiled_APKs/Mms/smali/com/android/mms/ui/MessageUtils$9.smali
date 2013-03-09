.class final Lcom/android/mms/ui/MessageUtils$9;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->importVcardWithCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mvCard:[B


# direct methods
.method constructor <init>(Landroid/content/Context;[BLandroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$9;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$9;->val$mvCard:[B

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$9;->val$account:Landroid/accounts/Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$9;->val$mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$9;->val$mvCard:[B

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$9;->val$account:Landroid/accounts/Account;

    #calls: Lcom/android/mms/ui/MessageUtils;->importVcardWithoutCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->access$100(Landroid/content/Context;[BLandroid/accounts/Account;)V

    .line 2051
    return-void
.end method
