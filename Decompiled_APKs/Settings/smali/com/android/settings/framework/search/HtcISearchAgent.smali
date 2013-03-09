.class public interface abstract Lcom/android/settings/framework/search/HtcISearchAgent;
.super Ljava/lang/Object;
.source "HtcISearchAgent.java"


# static fields
.field public static final EXTRA_SUMMARY:Ljava/lang/String; = "SUMMARY"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "TITLE"


# virtual methods
.method public abstract getEntries(Landroid/content/Context;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
