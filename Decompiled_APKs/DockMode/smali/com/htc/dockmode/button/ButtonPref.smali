.class public Lcom/htc/dockmode/button/ButtonPref;
.super Ljava/lang/Object;
.source "ButtonPref.java"


# static fields
.field public static final LAST_PRESSED:Ljava/lang/String; = "last_pressed"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/htc/dockmode/button/ButtonPref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/button/ButtonPref;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
