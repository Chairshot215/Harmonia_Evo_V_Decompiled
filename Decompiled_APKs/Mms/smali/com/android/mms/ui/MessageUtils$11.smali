.class final Lcom/android/mms/ui/MessageUtils$11;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->importVcardWithoutCheckExistedContact(Landroid/content/Context;[BLandroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$11;->val$mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
    .locals 4
    .parameter "bSuccess"
    .parameter "struct"

    .prologue
    .line 2110
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$11;->val$mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 2111
    const v1, 0x7f090153

    .line 2112
    .local v1, strId:I
    if-eqz p1, :cond_0

    .line 2113
    const v1, 0x7f090151

    .line 2115
    :cond_0
    move v0, v1

    .line 2116
    .local v0, resId:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$11;->val$mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/android/mms/ui/MessageUtils$11$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/MessageUtils$11$1;-><init>(Lcom/android/mms/ui/MessageUtils$11;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2123
    .end local v0           #resId:I
    .end local v1           #strId:I
    :cond_1
    return-void
.end method
