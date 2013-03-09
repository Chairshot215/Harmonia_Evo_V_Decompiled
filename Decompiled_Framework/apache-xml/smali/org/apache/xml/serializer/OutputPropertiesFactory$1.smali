.class final Lorg/apache/xml/serializer/OutputPropertiesFactory$1;
.super Ljava/lang/Object;
.source "OutputPropertiesFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;->val$resourceName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    const-class v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;

    iget-object v1, p0, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
