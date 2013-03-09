.class public final enum Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;
.super Ljava/lang/Enum;
.source "AndroidConfigChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/system/android/AndroidConfigChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

.field public static final enum BEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

.field public static final enum FASTEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

.field public static final enum LEGACY:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    const-string v1, "FASTEST"

    invoke-direct {v0, v1, v2}, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->FASTEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    .line 37
    new-instance v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    const-string v1, "BEST"

    invoke-direct {v0, v1, v3}, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->BEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    .line 43
    new-instance v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1, v4}, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->LEGACY:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->FASTEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->BEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->LEGACY:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->$VALUES:[Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    return-object v0
.end method

.method public static values()[Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->$VALUES:[Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    invoke-virtual {v0}, [Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    return-object v0
.end method
