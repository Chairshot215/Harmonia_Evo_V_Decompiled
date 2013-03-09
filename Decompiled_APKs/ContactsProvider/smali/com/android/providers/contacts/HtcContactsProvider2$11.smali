.class Lcom/android/providers/contacts/HtcContactsProvider2$11;
.super Ljava/lang/Thread;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;->performBackgroundTask(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 12651
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$11;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 12658
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$11;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    if-eqz v0, :cond_0

    .line 12659
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$11;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->schedule()V

    .line 12661
    :cond_0
    return-void
.end method
