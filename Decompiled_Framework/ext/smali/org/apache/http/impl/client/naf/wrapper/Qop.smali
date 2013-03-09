.class public Lorg/apache/http/impl/client/naf/wrapper/Qop;
.super Ljava/lang/Object;
.source "Qop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;
    }
.end annotation


# static fields
.field private static final QOP_AUTH_INT_NAME:Ljava/lang/String; = "auth-int"

.field private static final QOP_AUTH_NAME:Ljava/lang/String; = "auth"

.field private static final QOP_DEFAULT:Ljava/lang/String; = "auth-int"


# instance fields
.field private value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;


# direct methods
.method private constructor <init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    return-void
.end method

.method public static parseServerQop(Ljava/lang/String;)Lorg/apache/http/impl/client/naf/wrapper/Qop;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    goto :goto_0

    :cond_4
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth-int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lorg/apache/http/impl/client/naf/wrapper/Qop;

    sget-object v3, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNKNOWN_NOT_EMPTY:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/naf/wrapper/Qop;-><init>(Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;)V

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuth()Z
    .locals 3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthInt()Z
    .locals 3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_AUTH_INT:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnspecified()Z
    .locals 3

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    sget-object v2, Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;->QOP_UNSPECIFIED:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Qop [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/wrapper/Qop;->value:Lorg/apache/http/impl/client/naf/wrapper/Qop$QopValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
