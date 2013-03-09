.class Landroid/test/ProviderTestCase2$MockContext2;
.super Landroid/test/mock/MockContext;
.source "ProviderTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ProviderTestCase2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockContext2"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/ProviderTestCase2;


# direct methods
.method private constructor <init>(Landroid/test/ProviderTestCase2;)V
    .locals 0

    iput-object p1, p0, Landroid/test/ProviderTestCase2$MockContext2;->this$0:Landroid/test/ProviderTestCase2;

    invoke-direct {p0}, Landroid/test/mock/MockContext;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/ProviderTestCase2;Landroid/test/ProviderTestCase2$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/test/ProviderTestCase2$MockContext2;-><init>(Landroid/test/ProviderTestCase2;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Landroid/test/ProviderTestCase2$MockContext2;->this$0:Landroid/test/ProviderTestCase2;

    invoke-virtual {v0}, Landroid/test/ProviderTestCase2;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mockcontext2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroid/test/ProviderTestCase2$MockContext2;->this$0:Landroid/test/ProviderTestCase2;

    invoke-virtual {v0}, Landroid/test/ProviderTestCase2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
