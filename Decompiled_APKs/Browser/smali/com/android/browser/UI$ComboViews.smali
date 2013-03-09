.class public final enum Lcom/android/browser/UI$ComboViews;
.super Ljava/lang/Enum;
.source "UI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/UI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComboViews"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/UI$ComboViews;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/UI$ComboViews;

.field public static final enum Bookmarks:Lcom/android/browser/UI$ComboViews;

.field public static final enum History:Lcom/android/browser/UI$ComboViews;

.field public static final enum Snapshots:Lcom/android/browser/UI$ComboViews;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/browser/UI$ComboViews;

    const-string v1, "History"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/UI$ComboViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    .line 39
    new-instance v0, Lcom/android/browser/UI$ComboViews;

    const-string v1, "Bookmarks"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/UI$ComboViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    .line 40
    new-instance v0, Lcom/android/browser/UI$ComboViews;

    const-string v1, "Snapshots"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/UI$ComboViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/UI$ComboViews;->Snapshots:Lcom/android/browser/UI$ComboViews;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/UI$ComboViews;

    sget-object v1, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/UI$ComboViews;->Snapshots:Lcom/android/browser/UI$ComboViews;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/UI$ComboViews;->$VALUES:[Lcom/android/browser/UI$ComboViews;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/UI$ComboViews;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/android/browser/UI$ComboViews;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/browser/UI$ComboViews;

    return-object v0
.end method

.method public static values()[Lcom/android/browser/UI$ComboViews;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/browser/UI$ComboViews;->$VALUES:[Lcom/android/browser/UI$ComboViews;

    invoke-virtual {v0}, [Lcom/android/browser/UI$ComboViews;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/UI$ComboViews;

    return-object v0
.end method
