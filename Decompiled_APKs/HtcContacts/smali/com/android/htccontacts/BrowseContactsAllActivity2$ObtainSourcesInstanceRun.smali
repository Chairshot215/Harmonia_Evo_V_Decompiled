.class Lcom/android/htccontacts/BrowseContactsAllActivity2$ObtainSourcesInstanceRun;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObtainSourcesInstanceRun"
.end annotation


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 3298
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3299
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ObtainSourcesInstanceRun;->context:Landroid/content/Context;

    .line 3300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3302
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$ObtainSourcesInstanceRun;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    .line 3303
    return-void
.end method
