.class Lcom/android/mms/ui/TraditionalList$13;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TraditionalList;->addCallandSaveToPeopleContextMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;

.field final synthetic val$address2:Ljava/lang/String;

.field final synthetic val$cache2:Lcom/android/mms/util/ContactNameCache;

.field final synthetic val$context2:Landroid/content/Context;

.field final synthetic val$isPhoneNumber2:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;ZLcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2183
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$13;->this$0:Lcom/android/mms/ui/TraditionalList;

    iput-boolean p2, p0, Lcom/android/mms/ui/TraditionalList$13;->val$isPhoneNumber2:Z

    iput-object p3, p0, Lcom/android/mms/ui/TraditionalList$13;->val$cache2:Lcom/android/mms/util/ContactNameCache;

    iput-object p4, p0, Lcom/android/mms/ui/TraditionalList$13;->val$context2:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/mms/ui/TraditionalList$13;->val$address2:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2186
    iget-boolean v0, p0, Lcom/android/mms/ui/TraditionalList$13;->val$isPhoneNumber2:Z

    if-eqz v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$13;->val$cache2:Lcom/android/mms/util/ContactNameCache;

    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$13;->val$context2:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/TraditionalList$13;->val$address2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactNameCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$namephoto;

    .line 2194
    :goto_0
    return-void

    .line 2192
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TraditionalList$13;->val$context2:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/TraditionalList$13;->val$address2:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getContactInfoFromEmailAddr(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_0
.end method
