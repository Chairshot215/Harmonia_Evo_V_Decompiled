.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$PhotoIdUpdate;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PhotoIdUpdate"
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x2

.field public static final PHOTO_ID:I = 0x1

.field public static final UPDATE_SQL:Ljava/lang/String; = "UPDATE contacts SET photo_id=? WHERE _id=?"
