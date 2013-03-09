.class final enum Lcom/google/android/talk/BuddyListCombo$Focus;
.super Ljava/lang/Enum;
.source "BuddyListCombo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Focus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/talk/BuddyListCombo$Focus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/talk/BuddyListCombo$Focus;

.field public static final enum BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

.field public static final enum ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

.field public static final enum None:Lcom/google/android/talk/BuddyListCombo$Focus;

.field public static final enum SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 683
    new-instance v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    const-string v1, "SelfStatus"

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/BuddyListCombo$Focus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    new-instance v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    const-string v1, "ChatScreen"

    invoke-direct {v0, v1, v3}, Lcom/google/android/talk/BuddyListCombo$Focus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    new-instance v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    const-string v1, "BuddyList"

    invoke-direct {v0, v1, v4}, Lcom/google/android/talk/BuddyListCombo$Focus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    new-instance v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    const-string v1, "None"

    invoke-direct {v0, v1, v5}, Lcom/google/android/talk/BuddyListCombo$Focus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/talk/BuddyListCombo$Focus;

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->SelfStatus:Lcom/google/android/talk/BuddyListCombo$Focus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/talk/BuddyListCombo$Focus;->None:Lcom/google/android/talk/BuddyListCombo$Focus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->$VALUES:[Lcom/google/android/talk/BuddyListCombo$Focus;

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
    .line 683
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/talk/BuddyListCombo$Focus;
    .locals 1
    .parameter

    .prologue
    .line 683
    const-class v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/BuddyListCombo$Focus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/talk/BuddyListCombo$Focus;
    .locals 1

    .prologue
    .line 683
    sget-object v0, Lcom/google/android/talk/BuddyListCombo$Focus;->$VALUES:[Lcom/google/android/talk/BuddyListCombo$Focus;

    invoke-virtual {v0}, [Lcom/google/android/talk/BuddyListCombo$Focus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/BuddyListCombo$Focus;

    return-object v0
.end method
