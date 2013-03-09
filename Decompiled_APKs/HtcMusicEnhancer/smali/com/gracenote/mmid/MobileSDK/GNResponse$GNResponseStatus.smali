.class final enum Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;
.super Ljava/lang/Enum;
.source "GNResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GNResponseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

.field public static final enum ERROR:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

.field public static final enum NO_MATCH:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

.field public static final enum OK:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->OK:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->ERROR:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v4}, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->NO_MATCH:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->OK:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->ERROR:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->NO_MATCH:Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->ENUM$VALUES:[Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    return-object v0
.end method

.method public static values()[Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;->ENUM$VALUES:[Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/gracenote/mmid/MobileSDK/GNResponse$GNResponseStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
