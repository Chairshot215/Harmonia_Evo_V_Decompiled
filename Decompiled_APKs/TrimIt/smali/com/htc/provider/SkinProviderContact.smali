.class public final Lcom/htc/provider/SkinProviderContact;
.super Ljava/lang/Object;
.source "SkinProviderContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/SkinProviderContact$SKIN;
    }
.end annotation


# static fields
.field public static final SCAN_COMPLETE_INTENT:Ljava/lang/String; = "com.htc.skinscanner.complete"

.field public static final SKIN_DIR:Ljava/lang/String; = ".data/HtcSkins"

.field private static final mAuthority:Ljava/lang/String; = "com.htc.skinscanner.SkinProvider"

.field private static final mContent:Ljava/lang/String; = "content://"

.field public static final mTableSkin:Ljava/lang/String; = "skin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method
