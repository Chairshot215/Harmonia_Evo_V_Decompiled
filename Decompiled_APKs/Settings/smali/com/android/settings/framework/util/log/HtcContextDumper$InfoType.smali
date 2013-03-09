.class public final enum Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;
.super Ljava/lang/Enum;
.source "HtcContextDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/log/HtcContextDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

.field public static final enum FRAGMENT:Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

.field public static final enum THEME:Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    const-string v1, "FRAGMENT"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;->FRAGMENT:Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    .line 12
    new-instance v0, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    const-string v1, "THEME"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;->THEME:Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    sget-object v1, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;->FRAGMENT:Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;->THEME:Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;->$VALUES:[Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;->$VALUES:[Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/util/log/HtcContextDumper$InfoType;

    return-object v0
.end method
