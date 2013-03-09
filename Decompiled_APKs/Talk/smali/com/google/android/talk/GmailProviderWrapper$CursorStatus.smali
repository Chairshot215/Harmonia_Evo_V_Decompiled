.class public final enum Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;
.super Ljava/lang/Enum;
.source "GmailProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GmailProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

.field public static final enum COMPLETE:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

.field public static final enum ERROR:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

.field public static final enum LOADED:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

.field public static final enum LOADING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

.field public static final enum SEARCHING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 618
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADED:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    .line 619
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    .line 620
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->COMPLETE:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    .line 621
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->ERROR:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    .line 622
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    const-string v1, "SEARCHING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->SEARCHING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    .line 617
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADED:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->COMPLETE:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->ERROR:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->SEARCHING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->$VALUES:[Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

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
    .line 617
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;
    .locals 1
    .parameter

    .prologue
    .line 617
    const-class v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->$VALUES:[Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    invoke-virtual {v0}, [Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    return-object v0
.end method
