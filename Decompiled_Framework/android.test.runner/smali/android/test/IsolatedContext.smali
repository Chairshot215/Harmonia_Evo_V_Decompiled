.class public Landroid/test/IsolatedContext;
.super Landroid/content/ContextWrapper;
.source "IsolatedContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/IsolatedContext$MockAccountManager;
    }
.end annotation


# instance fields
.field private mBroadcastIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    iput-object p1, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/test/IsolatedContext$MockAccountManager;

    invoke-direct {v0, p0}, Landroid/test/IsolatedContext$MockAccountManager;-><init>(Landroid/test/IsolatedContext;)V

    iput-object v0, p0, Landroid/test/IsolatedContext;->mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAndClearBroadcastIntents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/IsolatedContext;->mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method
