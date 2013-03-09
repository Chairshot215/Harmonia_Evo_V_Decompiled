.class Lcom/android/providers/contacts/HtcContactsProvider2$1;
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
    .line 2312
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$1;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$1;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->checkFacebookWithPhoneLargeContactPhoto()V
    invoke-static {v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$000(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    .line 2318
    return-void
.end method
