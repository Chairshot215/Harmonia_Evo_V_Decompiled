.class public final enum Lcom/htc/cslib/util/JSONRequest$Method;
.super Ljava/lang/Enum;
.source "JSONRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/util/JSONRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cslib/util/JSONRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cslib/util/JSONRequest$Method;

.field public static final enum DELETE:Lcom/htc/cslib/util/JSONRequest$Method;

.field public static final enum GET:Lcom/htc/cslib/util/JSONRequest$Method;

.field public static final enum POST:Lcom/htc/cslib/util/JSONRequest$Method;

.field public static final enum PUT:Lcom/htc/cslib/util/JSONRequest$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Lcom/htc/cslib/util/JSONRequest$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/htc/cslib/util/JSONRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    .line 130
    new-instance v0, Lcom/htc/cslib/util/JSONRequest$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/htc/cslib/util/JSONRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/util/JSONRequest$Method;->POST:Lcom/htc/cslib/util/JSONRequest$Method;

    .line 138
    new-instance v0, Lcom/htc/cslib/util/JSONRequest$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/htc/cslib/util/JSONRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/util/JSONRequest$Method;->DELETE:Lcom/htc/cslib/util/JSONRequest$Method;

    .line 140
    new-instance v0, Lcom/htc/cslib/util/JSONRequest$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/htc/cslib/util/JSONRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cslib/util/JSONRequest$Method;->PUT:Lcom/htc/cslib/util/JSONRequest$Method;

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/cslib/util/JSONRequest$Method;

    sget-object v1, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cslib/util/JSONRequest$Method;->POST:Lcom/htc/cslib/util/JSONRequest$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cslib/util/JSONRequest$Method;->DELETE:Lcom/htc/cslib/util/JSONRequest$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cslib/util/JSONRequest$Method;->PUT:Lcom/htc/cslib/util/JSONRequest$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/cslib/util/JSONRequest$Method;->$VALUES:[Lcom/htc/cslib/util/JSONRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cslib/util/JSONRequest$Method;
    .locals 1
    .parameter "name"

    .prologue
    .line 114
    const-class v0, Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cslib/util/JSONRequest$Method;

    return-object v0
.end method

.method public static values()[Lcom/htc/cslib/util/JSONRequest$Method;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/htc/cslib/util/JSONRequest$Method;->$VALUES:[Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-virtual {v0}, [Lcom/htc/cslib/util/JSONRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cslib/util/JSONRequest$Method;

    return-object v0
.end method
