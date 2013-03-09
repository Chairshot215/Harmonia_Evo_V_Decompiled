.class public final Lcom/htc/provider/Notes$SycLogColumns;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SycLogColumns"
.end annotation


# static fields
.field public static final COLUMN_ENDTIME:Ljava/lang/String; = "endtime"

.field public static final COLUMN_STARTTIME:Ljava/lang/String; = "starttime"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
