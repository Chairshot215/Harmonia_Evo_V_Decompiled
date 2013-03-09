.class interface abstract Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcAppAssociationsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IfColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final _CATEGORY:Ljava/lang/String; = "category"

.field public static final _COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field public static final _ID:Ljava/lang/String; = "id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "content://com.htc.providers.settings.HtcPreferredAppProvider/preferred_app"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
