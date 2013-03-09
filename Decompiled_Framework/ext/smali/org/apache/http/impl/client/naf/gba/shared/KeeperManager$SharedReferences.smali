.class Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;
.super Ljava/lang/Object;
.source "KeeperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedReferences"
.end annotation


# instance fields
.field private final androidContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

.field private final gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

.field private final gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

.field private final gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

.field final synthetic this$0:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->this$0:Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->androidContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    iput-object p3, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    iput-object p4, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    iput-object p5, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    return-void
.end method


# virtual methods
.method public getAndroidContext()Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->androidContext:Lorg/apache/http/impl/client/naf/remote/android/AndroidContext;

    return-object v0
.end method

.method public getGbaAuthProvider()Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->gbaAuthProvider:Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;

    return-object v0
.end method

.method public getGbaServiceClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->gbaServiceClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    return-object v0
.end method

.method public getGbaServiceConnector()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/gba/shared/KeeperManager$SharedReferences;->gbaServiceConnector:Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;

    return-object v0
.end method
