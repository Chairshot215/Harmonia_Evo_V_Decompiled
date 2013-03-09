.class public Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;
.super Ljava/lang/Object;
.source "BrowseGroupsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseGroupsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountUpdateNotification"
.end annotation


# instance fields
.field public groupIsReadOnly:I

.field public itemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2278
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2280
    return-void
.end method

.method public constructor <init>(Lcom/android/htccontacts/BrowseGroupsActivity$GroupListItemCache;)V
    .locals 1
    .parameter "cache"

    .prologue
    .line 2273
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2274
    if-eqz p1, :cond_0

    .line 2275
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->itemRef:Ljava/lang/ref/WeakReference;

    .line 2277
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountUpdateNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseGroupsActivity$CountUpdateNotification;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
