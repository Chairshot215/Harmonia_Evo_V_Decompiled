.class Lorg/apache/xml/utils/SecuritySupport12$3;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/utils/SecuritySupport12;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/utils/SecuritySupport12;

.field final synthetic val$cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/SecuritySupport12;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/utils/SecuritySupport12$3;->this$0:Lorg/apache/xml/utils/SecuritySupport12;

    iput-object p2, p0, Lorg/apache/xml/utils/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/utils/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/xml/utils/SecuritySupport12$3;->val$cl:Ljava/lang/ClassLoader;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
