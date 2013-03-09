.class Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;
.super Landroid/os/AsyncTask;
.source "ContactDetailUpdatesAndEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetReadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mRefContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->mRefContext:Ljava/lang/ref/WeakReference;

    .line 1130
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1125
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 1134
    array-length v1, p1

    .line 1135
    .local v1, count:I
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->mRefContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1136
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1137
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1138
    aget-object v3, p1, v2

    invoke-static {v0, v3}, Lcom/htc/util/contacts/ContactsUtility;->setContactUpdatesAndEventsRead(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1141
    .end local v2           #i:I
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
