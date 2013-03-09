.class Lorg/apache/xpath/functions/SecuritySupport12$5;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xpath/functions/SecuritySupport12;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xpath/functions/SecuritySupport12;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/apache/xpath/functions/SecuritySupport12;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/functions/SecuritySupport12$5;->this$0:Lorg/apache/xpath/functions/SecuritySupport12;

    iput-object p2, p0, Lorg/apache/xpath/functions/SecuritySupport12$5;->val$file:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/apache/xpath/functions/SecuritySupport12$5;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
