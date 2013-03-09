.class public final enum Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;
.super Ljava/lang/Enum;
.source "NodeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

.field public static final enum BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

.field public static final enum PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

.field public static final enum STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    new-instance v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->STOPPED:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->PLAYING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->BUFFERING:Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->$VALUES:[Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

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
    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;
    .locals 1
    .parameter

    .prologue
    .line 220
    const-class v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->$VALUES:[Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/exploreactivity/NodeController$PlayState;

    return-object v0
.end method
