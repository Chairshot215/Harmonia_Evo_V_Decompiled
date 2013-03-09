.class public Lcom/android/updater/db/UpdaterProvider$BlackListColumns;
.super Ljava/lang/Object;
.source "UpdaterProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/db/UpdaterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlackListColumns"
.end annotation


# static fields
.field public static final BLACK_URL:Ljava/lang/String; = "blackFileUrl"

.field public static final CANCEL_COUNT:Ljava/lang/String; = "cancelCount"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
