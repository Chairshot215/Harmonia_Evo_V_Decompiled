.class interface abstract Lcom/android/htccontacts/ui/QuickContactWindow$Action;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Lcom/android/htccontacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/htccontacts/Collapser$Collapsible",
        "<",
        "Lcom/android/htccontacts/ui/QuickContactWindow$Action;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getBody()Ljava/lang/CharSequence;
.end method

.method public abstract getDataUri()Landroid/net/Uri;
.end method

.method public abstract getFallbackIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getHeader()Ljava/lang/CharSequence;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract isPrimary()Ljava/lang/Boolean;
.end method
