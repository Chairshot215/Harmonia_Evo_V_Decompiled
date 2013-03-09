.class Lcom/android/providers/contacts/HtcContactsProvider2$14;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"

# interfaces
.implements Lcom/android/providers/contacts/RefineRigntoneUriReceiver$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;->processRingtoneUriUpdate()V
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
    .line 18530
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$14;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/16 v1, 0x39

    .line 18537
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$14;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/HtcContactsProvider2;->removeBackgroundTask(I)V

    .line 18538
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$14;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/contacts/HtcContactsProvider2;->scheduleBackgroundTask(ILjava/lang/Object;)V

    .line 18539
    return-void
.end method
