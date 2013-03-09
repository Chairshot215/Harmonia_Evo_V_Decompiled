.class public final enum Lcom/android/mms/ui/MessagingShortcut$BubbleStates;
.super Ljava/lang/Enum;
.source "MessagingShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BubbleStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/MessagingShortcut$BubbleStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

.field public static final enum DEFAULT:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

.field public static final enum DISABLE:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

.field public static final enum ENABLE:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->DEFAULT:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    new-instance v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    const-string v1, "ENABLE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->ENABLE:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    new-instance v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    const-string v1, "DISABLE"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->DISABLE:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    sget-object v1, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->DEFAULT:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->ENABLE:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->DISABLE:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->$VALUES:[Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/MessagingShortcut$BubbleStates;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/MessagingShortcut$BubbleStates;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->$VALUES:[Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    invoke-virtual {v0}, [Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    return-object v0
.end method
