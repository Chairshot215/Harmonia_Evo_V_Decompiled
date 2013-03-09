.class public Lcom/htc/laputa/engine/aidl/SvrData$RENDERCMDPARAM;
.super Ljava/lang/Object;
.source "SvrData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/SvrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RENDERCMDPARAM"
.end annotation


# static fields
.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final ICONPATH:Ljava/lang/String; = "icon_path"

.field public static final LANDMARKLIST:Ljava/lang/String; = "landmark_list"

.field public static final LAT:Ljava/lang/String; = "lat"

.field public static final LON:Ljava/lang/String; = "lon"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final VIEW3D:Ljava/lang/String; = "view3d"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final ZOOMLV:Ljava/lang/String; = "zoomlv"


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/aidl/SvrData;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/aidl/SvrData;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/laputa/engine/aidl/SvrData$RENDERCMDPARAM;->this$0:Lcom/htc/laputa/engine/aidl/SvrData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
