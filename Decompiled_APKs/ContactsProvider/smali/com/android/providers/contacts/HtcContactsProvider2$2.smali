.class Lcom/android/providers/contacts/HtcContactsProvider2$2;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 2320
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$2;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$2;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const-string v1, "facebook"

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->insertSocialNetworkSmallContactPhoto(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$100(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V

    .line 2326
    return-void
.end method
