.class Lorg/apache/xml/dtm/ref/SecuritySupport12$4;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/dtm/ref/SecuritySupport12;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

.field final synthetic val$propName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xml/dtm/ref/SecuritySupport12;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$4;->this$0:Lorg/apache/xml/dtm/ref/SecuritySupport12;

    iput-object p2, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$4;->val$propName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/SecuritySupport12$4;->val$propName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
